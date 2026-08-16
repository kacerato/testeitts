.class public abstract Lcom/github/javaparser/metamodel/BaseNodeMetaModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final constructorParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final declaredPropertyMetaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final derivedPropertyMetaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final hasWildcard:Z

.field private final isAbstract:Z

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final superNodeMetaModel:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "superNodeMetaModel",
            "type",
            "name",
            "packageName",
            "isAbstract",
            "hasWildcard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->declaredPropertyMetaModels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->derivedPropertyMetaModels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->constructorParameters:Ljava/util/List;

    iput-object p1, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    iput-object p2, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    iput-object p3, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract:Z

    iput-boolean p6, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    return-void
.end method


# virtual methods
.method public construct(Ljava/util/Map;)Lcom/github/javaparser/ast/Node;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/github/javaparser/ast/Node;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-class v5, Lcom/github/javaparser/ast/AllFieldsConstructor;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getConstructorParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-virtual {v3}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    aput-object v3, v0, v2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
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
    check-cast p1, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    iget-object v2, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

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

.method public getAllPropertyMetaModels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getDeclaredPropertyMetaModels()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v1}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getDeclaredPropertyMetaModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getConstructorParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->constructorParameters:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaredPropertyMetaModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->declaredPropertyMetaModels:Ljava/util/List;

    return-object v0
.end method

.method public getDerivedPropertyMetaModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->derivedPropertyMetaModels:Ljava/util/List;

    return-object v0
.end method

.method public getMetaModelFieldName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQualifiedClassName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperNodeMetaModel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameGenerified()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWildcard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public is(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAbstract()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract:Z

    return v0
.end method

.method public isInstanceOfMetaModel(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseMetaModel"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->isRootNode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->isInstanceOfMetaModel(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Z

    move-result p1

    return p1
.end method

.method public isRootNode()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    return-object v0
.end method
