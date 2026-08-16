.class public Lcom/jme3/bullet/debug/MultiBodyDebugAppState;
.super Lcom/jme3/bullet/debug/BulletDebugAppState;
.source "SourceFile"


# static fields
.field public static final logger2:Ljava/util/logging/Logger;


# instance fields
.field private colliderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/bullet/objects/MultiBodyCollider;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;-><init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->colliderMap:Ljava/util/Map;

    return-void
.end method

.method private updateMultiBodies()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->colliderMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->colliderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/MultiBodySpace;

    invoke-virtual {v1}, Lcom/jme3/bullet/MultiBodySpace;->getMultiBodyList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/MultiBody;->listColliders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Node;

    if-nez v4, :cond_1

    new-instance v4, Lcom/jme3/scene/Node;

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState;->attachChild(Lcom/jme3/scene/Spatial;)V

    :cond_1
    iget-object v5, p0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->colliderMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->colliderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    const-class v5, Lcom/jme3/bullet/debug/ColliderDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    sget-object v5, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Create new MultiBodyDebugControl"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v5, Lcom/jme3/bullet/debug/ColliderDebugControl;

    invoke-direct {v5, p0, v3}, Lcom/jme3/bullet/debug/ColliderDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/MultiBodyCollider;)V

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    if-nez v4, :cond_7

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_7
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAxes(Lcom/jme3/scene/Node;Z)V

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public updateShapes()V
    .locals 0

    invoke-super {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateShapes()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;->updateMultiBodies()V

    return-void
.end method
