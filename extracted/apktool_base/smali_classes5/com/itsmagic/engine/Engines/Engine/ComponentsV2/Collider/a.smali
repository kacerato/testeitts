.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

.field public final b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final f:Lcom/jme3/math/Transform;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/jme3/math/Transform;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "onPhysicsCompound",
            "onPhysicsComponent",
            "shapeList",
            "matrix4",
            "bulletTransform",
            "collider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;",
            "Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;",
            "Ljava/util/List<",
            "LW8/b;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            "Lcom/jme3/math/Transform;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->h:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->f:Lcom/jme3/math/Transform;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->f()V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW8/b;

    invoke-virtual {v1}, LW8/b;->b()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, LW8/b;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v4

    invoke-static {v3, v4}, LNc/b;->S0(FF)F

    move-result v3

    invoke-static {v1, v3}, LNc/b;->S0(FF)F

    move-result v1

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v4

    invoke-static {v3, v4}, LNc/b;->X0(FF)F

    move-result v3

    invoke-static {v1, v3}, LNc/b;->X0(FF)F

    move-result v1

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v4

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v1, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    :cond_2
    :goto_1
    :try_start_0
    sget-object v1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->f:Lcom/jme3/math/Transform;

    invoke-virtual {v3, v2, v4}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->addColliderByHash(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v3}, LIc/m;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->h:Z

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW8/b;

    invoke-virtual {v2}, LW8/b;->b()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    :try_start_1
    sget-object v4, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->removeChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_2
    :try_start_5
    invoke-virtual {v2}, LW8/b;->e()V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :goto_3
    invoke-virtual {v2}, LW8/b;->e()V

    throw v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->removeColliderByHash(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onColliderChanged()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->h:Z

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    return-object v0
.end method

.method public d()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->h:Z

    return v0
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW8/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LW8/b;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
