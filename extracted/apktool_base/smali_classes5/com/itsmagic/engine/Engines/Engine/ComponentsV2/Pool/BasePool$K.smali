.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "K"
.end annotation


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public final d:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

.field public transient e:Lh9/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectPool",
            "pooledObject",
            "bulletShape"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->d:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-void
.end method


# virtual methods
.method public final a()Lh9/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->e:Lh9/b;

    if-nez v0, :cond_0

    new-instance v0, Lh9/b;

    invoke-direct {v0}, Lh9/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->e:Lh9/b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->e:Lh9/b;

    return-object v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->addCollision(Lj9/a;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-object v0
.end method

.method public beforeCollisionEvents()V
    .locals 0

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableCollisionEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findCollision(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->d:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->a()Lh9/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh9/b;->b(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidateBulletShapeChildrenCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->a()Lh9/b;

    move-result-object v0

    invoke-virtual {v0}, Lh9/b;->c()V

    return-void
.end method

.method public isActiveForPhysics()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPhysicsGetTransformations()V
    .locals 0

    return-void
.end method

.method public resyncOnFrame()V
    .locals 0

    return-void
.end method

.method public updatePhysics()V
    .locals 0

    return-void
.end method
