.class public Lcom/github/javaparser/metamodel/PropertyMetaModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final containingNodeMetaModel:Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

.field private final hasWildcard:Z

.field private final isNodeList:Z

.field private final isNonEmpty:Z

.field private final isOptional:Z

.field private final name:Ljava/lang/String;

.field private final nodeReference:Ljava/util/Optional;
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
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Optional;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "containingNodeMetaModel",
            "name",
            "type",
            "nodeReference",
            "isOptional",
            "isNonEmpty",
            "isNodeList",
            "hasWildcard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    iput-object p2, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    iput-object p4, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->nodeReference:Ljava/util/Optional;

    iput-boolean p5, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    iput-boolean p6, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty:Z

    iput-boolean p7, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    iput-boolean p8, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    return-void
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
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    iget-object v2, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getContainingNodeMetaModel()Lcom/github/javaparser/metamodel/BaseNodeMetaModel;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    return-object v0
.end method

.method public getGetterMethodName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->getterName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModelFieldName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PropertyMetaModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeReference()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->nodeReference:Ljava/util/Optional;

    return-object v0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/javaparser/utils/CodeGenerationUtils;->setterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameForGetter()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Optional<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameForSetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameForSetter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameForSetter()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeList<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameGenerified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameGenerified()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameGenerified()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NoSuchFieldError;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasWildcard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public is(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->is(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public is(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldName"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAttribute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getNodeReference()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isNodeList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    return v0
.end method

.method public isNonEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty:Z

    return v0
.end method

.method public isOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSingular()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lcom/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
