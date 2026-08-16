.class public abstract Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lh9/a;


# instance fields
.field public final E:LIc/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIc/s<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lj9/b;

.field public transient G:Lh9/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedComponentType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance p1, LIc/s;

    invoke-direct {p1}, LIc/s;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->E:LIc/s;

    new-instance p1, Lj9/b;

    invoke-direct {p1, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    return-void
.end method

.method private getBulletShapeChildrenCache()Lh9/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->G:Lh9/b;

    if-nez v0, :cond_0

    new-instance v0, Lh9/b;

    invoke-direct {v0}, Lh9/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->G:Lh9/b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->G:Lh9/b;

    return-object v0
.end method

.method private propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsComponent"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "physicsComponent"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    .line 9
    instance-of v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-ne v2, p0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 15
    invoke-direct {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public acceptColliders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addColliderByHash(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->E:LIc/s;

    invoke-virtual {p1}, LIc/m;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LIc/s;->l(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCollision(Lj9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->a(Lj9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public beforeCollisionEvents()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public colliderWith(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public collisionAt(I)Lj9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->c(I)Lj9/a;

    move-result-object p1

    return-object p1
.end method

.method public collisionCount()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0}, Lj9/b;->d()I

    move-result v0

    return v0
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enablePredictUnconstraintMotion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->E:LIc/s;

    invoke-virtual {v0, p1}, LIc/s;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-object p1
.end method

.method public findCollision(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.end method

.method public abstract getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
.end method

.method public getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShapeChildrenCache()Lh9/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh9/b;->b(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public getFreeze()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getInvMass()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    return-object v0
.end method

.method public invalidateBulletShapeChildrenCache()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShapeChildrenCache()Lh9/b;

    move-result-object v0

    invoke-virtual {v0}, Lh9/b;->c()V

    return-void
.end method

.method public isActiveForPhysics()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    return v0
.end method

.method public isColliding()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    invoke-virtual {v0}, Lj9/b;->g()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onColliderChanged()V
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->E:LIc/s;

    invoke-virtual {v0}, LIc/s;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->G:Lh9/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh9/b;->a()V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public final propagateDettachHostPhysicsEntityChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    return-void
.end method

.method public final propagateNewHostPhysicsEntityChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please fill bullet shape before sending events"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeColliderByHash(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->E:LIc/s;

    invoke-virtual {p1}, LIc/m;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LIc/s;->l(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resyncOnFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->F:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public updatePhysics()V
    .locals 0

    return-void
.end method
