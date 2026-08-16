.class public Lcom/github/javaparser/resolution/MethodUsage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametrized;


# instance fields
.field private declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

.field private exceptionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private paramTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

.field private typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 5
    iput-object p1, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 6
    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->formalParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getSpecifiedExceptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getSpecifiedExceptions()Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-static {}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType",
            "exceptionTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType",
            "exceptionTypes",
            "typeParametersMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 17
    iput-object p2, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 18
    iput-object p3, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 19
    iput-object p4, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    .line 20
    iput-object p5, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-void
.end method


# virtual methods
.method public declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public exceptionTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return-object v0
.end method

.method public getErasedSignature()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoParams()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object p1
.end method

.method public getParamTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    return-object v0
.end method

.method public getQualifiedSignature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReturnTypeSubstituable(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherMethodUsage"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->isReturnTypeSubstituable(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method

.method public isSameSignature(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherMethodUsage"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSubSignature(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherMethodUsage"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getErasedSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getErasedSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceExceptionType(ILcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "replaced"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/github/javaparser/resolution/MethodUsage;

    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v3, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v4, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object v6, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public replaceParamType(ILcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "replaced"
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/github/javaparser/resolution/MethodUsage;

    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v4, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object v5, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v6, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public replaceReturnType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "returnType"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/MethodUsage;

    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v3, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v5, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v6, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object v0
.end method

.method public replaceTypeParameter(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParameter",
            "type"
        }
    .end annotation

    if-eqz p2, :cond_2

    new-instance v6, Lcom/github/javaparser/resolution/MethodUsage;

    iget-object v1, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object v4, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->toBuilder()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->setValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v3, p1, p2, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/github/javaparser/resolution/MethodUsage;->replaceParamType(ILcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v2, p1, p2, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/github/javaparser/resolution/MethodUsage;->replaceExceptionType(ILcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v6, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1, p1, p2, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/github/javaparser/resolution/MethodUsage;->replaceReturnType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/MethodUsage;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public returnType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->returnType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodUsage{declaration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/MethodUsage;->declaration:Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-object v0
.end method
