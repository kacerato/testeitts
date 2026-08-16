.class public final LJAVARuntime/LaserHit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Laser"
    }
.end annotation


# instance fields
.field public transient laserHit:Laa/a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Laa/a;

    invoke-direct {v0}, Laa/a;-><init>()V

    iput-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    return-void
.end method

.method public constructor <init>(Laa/a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "laserHit"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    .line 4
    invoke-virtual {p1, p0}, Laa/a;->y(LJAVARuntime/LaserHit;)V

    return-void
.end method


# virtual methods
.method public getCollider()LJAVARuntime/Collider;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Collider the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Collider que o Laser colidiu."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->d()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->d()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/Collider;

    return-object v0
.end method

.method public getColliderObject()LJAVARuntime/SpatialObject;
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto que o Laser colidiu."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

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

.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance between the Laser origin and the point it collided."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia entre a origem do Laser e o ponto que o Laser colidiu."
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->getDistance()F

    move-result v0

    return v0
.end method

.method public getFaceNormal()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the normal vector of the face the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da face que o Laser colidiu."
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getNormal()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the normal vector of the Laser\'s direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da dire\u00e7\u00e3o do Laser."
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getObject()LJAVARuntime/SpatialObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object hit by the Laser."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto que o Laser colidiu."
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the point where the Laser hit."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o ponto onde o Laser atingiu."
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getPoolComponent()LJAVARuntime/PoolComponent;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->j()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->j()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

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

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->k()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->k()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C()LJAVARuntime/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public getUVCoord()LJAVARuntime/Vector2;
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the UV coordinates of the point the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna as coordenadas UV do ponto que o Laser colidiu."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-boolean v1, v0, Laa/a;->r:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Uv was not requested by laser, use laser.setCalculateFaceUV(true); before tracing lasers if you need face uv coordinates"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setCollider(LJAVARuntime/Collider;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Collider the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o Collider que o Laser colidiu."
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
            "collider"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0, p1}, Laa/a;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    :goto_0
    return-void
.end method

.method public setColliderObject(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the object the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto que o Laser colidiu."
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

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Laa/a;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method

.method public setDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the distance between the Laser origin and the point it collided."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia entre a origem do Laser e o ponto que o Laser colidiu."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "distance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    invoke-virtual {v0, p1}, Laa/a;->setDistance(F)V

    return-void
.end method

.method public setFaceNormal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the normal vector of the face the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vetor normal da face que o Laser colidiu."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "normal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Laa/a;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    return-void
.end method

.method public setNormal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the normal vector of the Laser\'s direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vetor normal da dire\u00e7\u00e3o do Laser."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "normal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Laa/a;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    return-void
.end method

.method public setObject(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the object hit by the Laser."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto que foi atingido pelo Laser."
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->validate()Z

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method

.method public setPoint(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the point where the Laser hit."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o ponto onde o Laser atingiu."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Laa/a;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

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

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/PoolComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0, p1}, Laa/a;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

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

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/PooledObject;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0, p1}, Laa/a;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :goto_0
    return-void
.end method

.method public setUVCoord(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the UV coordinates of the point the Laser collided with."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define as coordenadas UV do ponto que o Laser colidiu."
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
            "normal"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Laa/a;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/LaserHit;->laserHit:Laa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laa/a;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_0
    return-void
.end method
