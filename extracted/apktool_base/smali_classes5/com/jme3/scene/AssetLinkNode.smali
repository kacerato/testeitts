.class public Lcom/jme3/scene/AssetLinkNode;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# instance fields
.field protected assetChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/asset/ModelKey;",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field protected assetLoaderKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/asset/ModelKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/ModelKey;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/jme3/scene/AssetLinkNode;-><init>(Ljava/lang/String;Lcom/jme3/asset/ModelKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/asset/ModelKey;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    .line 8
    iget-object p1, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLinkedChild(Lcom/jme3/asset/ModelKey;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachLinkedChild(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/ModelKey;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/jme3/scene/AssetLinkNode;->addLinkedChild(Lcom/jme3/asset/ModelKey;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public attachLinkedChild(Lcom/jme3/scene/Spatial;Lcom/jme3/asset/ModelKey;)V
    .locals 1

    .line 5
    invoke-virtual {p0, p2}, Lcom/jme3/scene/AssetLinkNode;->addLinkedChild(Lcom/jme3/asset/ModelKey;)V

    .line 6
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public attachLinkedChildren(Lcom/jme3/asset/AssetManager;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/AssetLinkNode;->detachLinkedChildren()V

    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/ModelKey;

    iget-object v2, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    :cond_0
    invoke-interface {p1, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v3, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    return-void
.end method

.method public detachLinkedChild(Lcom/jme3/asset/ModelKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/AssetLinkNode;->removeLinkedChild(Lcom/jme3/asset/ModelKey;)V

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public detachLinkedChild(Lcom/jme3/scene/Spatial;Lcom/jme3/asset/ModelKey;)V
    .locals 1

    .line 5
    invoke-virtual {p0, p2}, Lcom/jme3/scene/AssetLinkNode;->removeLinkedChild(Lcom/jme3/asset/ModelKey;)V

    .line 6
    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public detachLinkedChildren()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAssetLoaderKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/asset/ModelKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "assetLoaderKeyList"

    invoke-interface {v0, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/ModelKey;

    invoke-interface {p1, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    if-eqz v2, :cond_0

    iput-object p0, v2, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v3, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/jme3/scene/AssetLinkNode;->assetChildren:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v4, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Cannot locate {0} for asset link node {1}"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLinkedChild(Lcom/jme3/asset/ModelKey;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/scene/Spatial;

    invoke-direct {v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v1, p0, Lcom/jme3/scene/AssetLinkNode;->assetLoaderKeys:Ljava/util/ArrayList;

    const-string v2, "assetLoaderKeyList"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    return-void
.end method
