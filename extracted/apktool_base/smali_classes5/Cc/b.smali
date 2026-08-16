.class public LCc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/collision/PhysicsCollisionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lh9/a;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "physicsEntity",
            "triangleIndex"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lh9/a;->getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lh9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object p0

    return-object p0

    :cond_2
    if-gez p1, :cond_3

    return-object v2

    :cond_3
    array-length v1, v0

    if-lez v1, :cond_7

    array-length v1, v0

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_6

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, LDc/b;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    instance-of v6, v6, LDc/c;

    if-eqz v6, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    :try_start_0
    aget-object p1, v0, p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lh9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object v2
.end method

.method public static b(Lh9/a;Lh9/a;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)Lj9/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "physicsEntity1",
            "physicsEntity2",
            "normal",
            "normalMultiplier",
            "colContactPoint",
            "appliedImpulse"
        }
    .end annotation

    invoke-interface {p0}, Lh9/a;->keepContactList()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    invoke-interface {p0, p2}, Lh9/a;->findCollision(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lj9/a;

    invoke-direct {p2}, Lj9/a;-><init>()V

    invoke-interface {p1}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    iput-object p3, p2, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p0, p2}, Lh9/a;->addCollision(Lj9/a;)V

    :cond_1
    iput-object p1, p2, Lj9/a;->c:Lh9/a;

    return-object p2
.end method


# virtual methods
.method public collision(Lcom/jme3/bullet/collision/PhysicsCollisionEvent;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getObjectA()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/a;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getObjectB()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lh9/a;

    invoke-interface {v0}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object of p1 is null type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v8}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object of p2 is null type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v8}, Lh9/a;->keepContactList()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getDistance1()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getNormalWorldOnB()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getPositionWorldOnA()Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getAppliedImpulse()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getIndex0()I

    move-result v1

    invoke-static {v0, v1}, LCc/b;->a(Lh9/a;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getIndex1()I

    move-result v2

    invoke-static {v8, v2}, LCc/b;->a(Lh9/a;I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v2

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-interface {v8}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_0
    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-interface {v0}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-ne v3, v4, :cond_4

    move-object v13, v1

    move-object v12, v2

    goto :goto_1

    :cond_4
    move-object v12, v1

    move-object v13, v2

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    move-object v5, v10

    move v6, v11

    invoke-static/range {v1 .. v6}, LCc/b;->b(Lh9/a;Lh9/a;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v12, v1, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v1}, Lj9/a;->e()Lj9/a$a;

    move-result-object v2

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v2, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iput v11, v2, Lj9/a$a;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getDistance1()F

    move-result v3

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    iput v3, v2, Lj9/a$a;->d:F

    iput-object v12, v2, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, v1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    if-eqz v3, :cond_5

    move-object v3, v8

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-interface {v0}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eq v1, v2, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v13

    move-object v3, v8

    move-object v4, v9

    move-object v6, v10

    move v7, v11

    invoke-static/range {v2 .. v7}, LCc/b;->b(Lh9/a;Lh9/a;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v12, v1, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v1}, Lj9/a;->e()Lj9/a$a;

    move-result-object v2

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v2, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iput v11, v2, Lj9/a$a;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getDistance1()F

    move-result v3

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    iput v3, v2, Lj9/a$a;->d:F

    iput-object v12, v2, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, v1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    if-eqz v3, :cond_6

    move-object v3, v8

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :cond_6
    const/high16 v4, -0x40800000    # -1.0f

    move-object v1, v8

    move-object v2, v0

    move-object v3, v9

    move-object v5, v10

    move v6, v11

    invoke-static/range {v1 .. v6}, LCc/b;->b(Lh9/a;Lh9/a;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)Lj9/a;

    move-result-object v1

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v1, :cond_7

    iput-object v13, v1, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v1}, Lj9/a;->e()Lj9/a$a;

    move-result-object v2

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v2, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iput v11, v2, Lj9/a$a;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getDistance1()F

    move-result v3

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    iput v3, v2, Lj9/a$a;->d:F

    iput-object v13, v2, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, v1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v4

    iput-object v4, v1, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-interface {v8}, Lh9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eq v1, v2, :cond_8

    const/high16 v4, -0x40800000    # -1.0f

    move-object v1, v12

    move-object v2, v0

    move-object v3, v9

    move-object v5, v10

    move v6, v11

    invoke-static/range {v1 .. v6}, LCc/b;->b(Lh9/a;Lh9/a;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-object v13, v1, Lj9/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v1}, Lj9/a;->e()Lj9/a$a;

    move-result-object v2

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v2, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v2, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iput v11, v2, Lj9/a$a;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getDistance1()F

    move-result v3

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    iput v3, v2, Lj9/a$a;->d:F

    iput-object v13, v2, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, v1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    if-eqz v3, :cond_8

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v3

    iput-object v3, v1, Lj9/a;->j:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v3

    iput-object v3, v1, Lj9/a;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v1

    iput-object v1, v2, Lj9/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    iput-object v0, v2, Lj9/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
