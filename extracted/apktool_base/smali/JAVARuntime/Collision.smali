.class public final LJAVARuntime/Collision;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Collision$Contact;
    }
.end annotation


# instance fields
.field public transient instance:Lj9/a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lj9/a;

    invoke-direct {v0}, Lj9/a;-><init>()V

    iput-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    return-void
.end method

.method public constructor <init>(Lj9/a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "collision"
        }
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    return-void
.end method


# virtual methods
.method public contactAt(I)LJAVARuntime/Collision$Contact;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the contact at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o contato no \u00edndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj9/a$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lj9/a$a;->b()LJAVARuntime/Collision$Contact;

    move-result-object p1

    return-object p1
.end method

.method public contactCount()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of contact points in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de pontos de contato na colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCollider()LJAVARuntime/Collider;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the collider associated with this collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Collider associado a esta colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/Collider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColliderObject()LJAVARuntime/SpatialObject;
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object associated with the Collider in this collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto associado ao Collider nesta colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LJAVARuntime/SpatialObject;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getContactCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of contact points in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de pontos de contato na colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the list of contact points in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a lista de pontos de contato na colis\u00e3o."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Collision$Contact;",
            ">;"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v2, v2, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v2, v2, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/a$a;

    invoke-virtual {v2}, Lj9/a$a;->b()LJAVARuntime/Collision$Contact;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContactPoint()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the contact position of the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call getContactPoint() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use getContactPoint() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Collision$Contact;->getContactPoint()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the penetration distance at the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call getDistance() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia de penetra\u00e7\u00e3o no primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use getDistance() nele)."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Collision$Contact;->getDistance()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImpulse()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the impulse magnitude at the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call getImpulse() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a magnitude do impulso no primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use getImpulse() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Collision$Contact;->getImpulse()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNormal()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the normal vector of the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call getNormal() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal do primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use getNormal() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Collision$Contact;->getNormal()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()LJAVARuntime/SpatialObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the other object involved in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o outro objeto envolvido na colis\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicsComponent()LJAVARuntime/PhysicsComponent;
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the physics of the other object involved in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a f\u00edsica do outro objeto envolvido na colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->c:Lh9/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/PhysicsComponent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPoolComponent()LJAVARuntime/PoolComponent;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/PoolComponent;

    return-object v0
.end method

.method public getPooledObject()LJAVARuntime/PooledObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object v0, v0, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C()LJAVARuntime/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public setCollider(LJAVARuntime/Collider;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the collider associated with this collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o Collider associado a esta colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "collider"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p1, v0, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    :goto_0
    return-void
.end method

.method public setColliderObject(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the object associated with the Collider in this collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto associado ao Collider nesta colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->validate()Z

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v0, Lj9/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-void
.end method

.method public setContactPoint(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the contact position of the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call setContactPoint() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a posi\u00e7\u00e3o do primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use setContactPoint() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0, p1}, LJAVARuntime/Collision$Contact;->setContactPoint(LJAVARuntime/Vector3;)V

    :cond_0
    return-void
.end method

.method public setDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the penetration distance at the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call setDistance() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia de penetra\u00e7\u00e3o no primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use setDistance() nele)."
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0, p1}, LJAVARuntime/Collision$Contact;->setDistance(F)V

    :cond_0
    return-void
.end method

.method public setImpulse(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the impulse magnitude at the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call setImpulse() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a magnitude do impulso no primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use setImpulse() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0, p1}, LJAVARuntime/Collision$Contact;->setImpulse(F)V

    :cond_0
    return-void
.end method

.method public setNormal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the normal vector of the first contact point (deprecated, get a Contact using contactAt() or getContactList() and call setNormal() on it)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vetor normal do primeiro ponto de contato (obsoleto, pegue um Contact com contactAt() ou getContactList() e use setNormal() nele)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "normal"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p0}, LJAVARuntime/Collision;->contactCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/Collision;->contactAt(I)LJAVARuntime/Collision$Contact;

    move-result-object v0

    invoke-virtual {v0, p1}, LJAVARuntime/Collision$Contact;->setNormal(LJAVARuntime/Vector3;)V

    :cond_0
    return-void
.end method

.method public setObject(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the other object involved in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o outro objeto envolvido na colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->validate()Z

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v0, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-void
.end method

.method public setPhysicsComponent(LJAVARuntime/PhysicsComponent;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the physics of the other object involved in the collision."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a f\u00edsica do outro objeto envolvido na colis\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    iput-object p1, v0, Lj9/a;->c:Lh9/a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->c:Lh9/a;

    :goto_0
    return-void
.end method

.method public setPoolComponent(LJAVARuntime/PoolComponent;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pooled object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolComponent"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object p1, v0, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    :goto_0
    return-void
.end method

.method public setPooledObject(LJAVARuntime/PooledObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pooled object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    iget-object p1, p1, LJAVARuntime/PooledObject;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object p1, v0, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_0
    return-void
.end method
