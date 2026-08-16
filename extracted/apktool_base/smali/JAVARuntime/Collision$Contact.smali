.class public LJAVARuntime/Collision$Contact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/UnimplementedDoc;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# instance fields
.field public instance:Lj9/a$a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lj9/a$a;

    invoke-direct {v0}, Lj9/a$a;-><init>()V

    iput-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    return-void
.end method

.method public constructor <init>(Lj9/a$a;)V
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
    iput-object p1, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    return-void
.end method


# virtual methods
.method public getCollider()LJAVARuntime/Collider;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Collider associated with this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Collider associado a este ponto de contato."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

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
        value = "Returns the object associated with the Collider at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto associado ao Collider neste ponto de contato."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

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

.method public getContactPoint()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the exact contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o ponto exato de contato."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

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
        value = "Returns the penetration distance at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia de penetra\u00e7\u00e3o nesse ponto de contato."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget v0, v0, Lj9/a$a;->d:F

    return v0
.end method

.method public getImpulse()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the impulse magnitude applied at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a magnitude do impulso aplicado neste ponto de contato."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget v0, v0, Lj9/a$a;->c:F

    return v0
.end method

.method public getNormal()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the normal vector of the contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal do ponto de contato."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object v0, v0, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

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
        value = "Sets the Collider associated with this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o Collider associado a este ponto de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p1, v0, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    :goto_0
    return-void
.end method

.method public setColliderObject(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the object associated with the Collider at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto associado ao Collider neste ponto de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v0, Lj9/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-void
.end method

.method public setContactPoint(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the exact contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o ponto exato de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, v0, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the penetration distance at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia de penetra\u00e7\u00e3o nesse ponto de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iput p1, v0, Lj9/a$a;->d:F

    return-void
.end method

.method public setImpulse(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the impulse magnitude applied at this contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a magnitude do impulso aplicado neste ponto de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iput p1, v0, Lj9/a$a;->c:F

    return-void
.end method

.method public setNormal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the normal vector of the contact point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vetor normal do ponto de contato."
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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, v0, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object p1, v0, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

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

    iget-object v0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    iget-object p1, p1, LJAVARuntime/PooledObject;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object p1, v0, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_0
    return-void
.end method
