.class public LJAVARuntime/PoolComponent;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "ObjectPool",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This is an abstract class, use ObjectPool or PrefabPool instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public add(LJAVARuntime/Vector3;)LJAVARuntime/PooledObject;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds an HPO at the specified position and returns its index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona um HPO na posi\u00e7\u00e3o especificada e retorna seu \u00edndice."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C()LJAVARuntime/PooledObject;

    move-result-object p1

    return-object p1
.end method

.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/PoolComponent;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public delete(LJAVARuntime/PooledObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deletes the HPO at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Exclui o HPO no \u00edndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/PooledObject;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->delete(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deletes multiple HPOs based on the provided search results."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Exclui v\u00e1rios objects com base nos resultados de busca fornecidos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "searchResultList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchResultList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/PoolSearchResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/PoolSearchResult;

    .line 4
    iget-object v2, v2, LJAVARuntime/PoolSearchResult;->instance:Lm9/k;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->deleteHPOs(Ljava/util/List;)V

    return-void
.end method

.method public findInCircle(LJAVARuntime/Vector3;F)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Finds and returns all objects within a specified circle defined by center and radius."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encontra e retorna todos os objects dentro de um c\u00edrculo especificado pelo centro e raio."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/PoolSearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findInCircle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/k;

    invoke-virtual {v1}, Lm9/k;->h()LJAVARuntime/PoolSearchResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findInSphere(LJAVARuntime/Vector3;F)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Finds and returns all objects within a specified sphere defined by center and radius."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encontra e retorna todos os objects dentro de uma esfera especificada pelo centro e raio."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/PoolSearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findInSphere(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/k;

    invoke-virtual {v1}, Lm9/k;->h()LJAVARuntime/PoolSearchResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findInSquare(LJAVARuntime/Vector2;LJAVARuntime/Vector2;)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Finds and returns all objects within a rectangular area defined by two corners: min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encontra e retorna todos os objects dentro de uma \u00e1rea retangular definida por dois cantos: min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector2;",
            "LJAVARuntime/Vector2;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/PoolSearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findInSquare(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/k;

    invoke-virtual {v1}, Lm9/k;->h()LJAVARuntime/PoolSearchResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEnableImpostorSystem()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the impostor system is enabled for this pool."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o sistema de impostor est\u00e1 habilitado para este pool."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getEnableImpostorSystem()Z

    move-result v0

    return v0
.end method

.method public getImpostorLighting()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether pool impostors receive scene lighting."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se os impostores do pool recebem ilumina\u00e7\u00e3o da cena."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorLighting()Z

    move-result v0

    return v0
.end method

.method public getImpostorStartDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the impostor start distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia inicial do impostor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorStartDistance()F

    move-result v0

    return v0
.end method

.method public getImpostorTextureResolutionID()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the impostor texture resolution identifier."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o identificador de resolu\u00e7\u00e3o da textura do impostor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorTextureResolutionID()I

    move-result v0

    return v0
.end method

.method public getImpostorWindEffect()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the impostor wind effect intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a intensidade do wind effect do impostor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorWindEffect()F

    move-result v0

    return v0
.end method

.method public getObject(I)LJAVARuntime/PooledObject;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getObjectAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C()LJAVARuntime/PooledObject;

    move-result-object p1

    return-object p1
.end method

.method public getStickToTerrain()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether this pool sticks its objects to terrain during rebuilds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se este pool ajusta seus objetos ao terreno durante rebuilds."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getStickToTerrain()Z

    move-result v0

    return v0
.end method

.method public notifyObjectChanged(LJAVARuntime/PooledObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Updates the object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Atualiza o objeto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p1, p1, LJAVARuntime/PooledObject;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->notifyObjectChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    return-void
.end method

.method public objectCount()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the count of objects in the current HPOP."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a quantidade de objetos no HPOP atual."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getHPOCount()I

    move-result v0

    return v0
.end method

.method public setEnableImpostorSystem(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables the impostor system for this pool."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita o sistema de impostor deste pool."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setEnableImpostorSystem(Z)V

    return-void
.end method

.method public setImpostorLighting(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables scene lighting for pool impostors."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita a ilumina\u00e7\u00e3o da cena nos impostores do pool."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setImpostorLighting(Z)V

    return-void
.end method

.method public setImpostorStartDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the impostor start distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia inicial do impostor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setImpostorStartDistance(F)V

    return-void
.end method

.method public setImpostorTextureResolutionID(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the impostor texture resolution identifier."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o identificador de resolu\u00e7\u00e3o da textura do impostor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setImpostorTextureResolutionID(I)V

    return-void
.end method

.method public setImpostorWindEffect(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the impostor wind effect intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a intensidade do wind effect do impostor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setImpostorWindEffect(F)V

    return-void
.end method

.method public setStickToTerrain(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables sticking this pool\'s objects to terrain during rebuilds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita o ajuste dos objetos deste pool ao terreno durante rebuilds."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->setStickToTerrain(Z)V

    return-void
.end method
