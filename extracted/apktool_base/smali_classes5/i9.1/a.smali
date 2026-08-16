.class public Li9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

.field public b:F

.field public c:F

.field public d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collisionShape",
            "userObject"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    iput v0, p0, Li9/a;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Li9/a;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Li9/a;->g:Z

    new-instance v0, Li9/a$a;

    invoke-direct {v0, p0}, Li9/a$a;-><init>(Li9/a;)V

    iput-object v0, p0, Li9/a;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Li9/a;->h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p2, p0, Li9/a;->i:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Li9/a;)Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 0

    iget-object p0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object p0
.end method

.method public static synthetic b(Li9/a;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 0

    iget-object p0, p0, Li9/a;->h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Li9/a;->h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Li9/a;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v1, p0, Li9/a;->b:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    iget v0, p0, Li9/a;->c:F

    invoke-static {v2, v0}, LNc/b;->M(FF)F

    move-result v0

    iput v0, p0, Li9/a;->c:F

    iget-object v1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    invoke-virtual {p0, p1}, Li9/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Li9/a;->r()V

    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    const-class v1, Lcom/jme3/math/Quaternion;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    :try_start_0
    invoke-static {p1, v2}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s1(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v3, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public e()Li9/a;
    .locals 3

    new-instance v0, Li9/a;

    iget-object v1, p0, Li9/a;->h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iget-object v2, p0, Li9/a;->i:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Li9/a;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V

    iget-object v1, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget v1, p0, Li9/a;->c:F

    iput v1, v0, Li9/a;->c:F

    iget v1, p0, Li9/a;->b:F

    iput v1, v0, Li9/a;->b:F

    return-object v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-boolean p1, p0, Li9/a;->g:Z

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li9/a;->g:Z

    :cond_0
    return-void
.end method

.method public g()F
    .locals 1

    iget v0, p0, Li9/a;->b:F

    return v0
.end method

.method public h()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public i()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Li9/a;->h:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Li9/a;->c:F

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Li9/a;->g:Z

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Li9/a;->j:Ljava/lang/Runnable;

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iget v0, p0, Li9/a;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Li9/a;->b:F

    if-eqz v0, :cond_1

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    :cond_1
    return-void
.end method

.method public n(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iget v0, p0, Li9/a;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Li9/a;->c:F

    if-eqz v0, :cond_1

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    :cond_1
    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerReference"
        }
    .end annotation

    iput-object p1, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object p1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li9/a;->r()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    iget-boolean v0, p0, Li9/a;->g:Z

    if-eqz v0, :cond_2

    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v1, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Li9/a;->g:Z

    :cond_2
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-boolean v0, p0, Li9/a;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li9/a;->r()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Li9/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Li9/a;->g:Z

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    iget v0, p0, Li9/a;->e:I

    iget-object v1, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Li9/a;->f:I

    iget-object v1, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    invoke-virtual {v1}, LIc/m;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    iput v0, p0, Li9/a;->e:I

    iget-object v0, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    iput v0, p0, Li9/a;->f:I

    iget-object v0, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->g()I

    move-result v0

    iget-object v1, p0, Li9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->h()I

    move-result v1

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(I)V

    iget-object v0, p0, Li9/a;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
