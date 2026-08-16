.class public Li9/b;
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

.field public h:Z

.field public i:Z

.field public j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field public k:Ljava/lang/Object;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final n:Ljava/lang/Runnable;


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

    iput-object v0, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    iput v0, p0, Li9/b;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Li9/b;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Li9/b;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Li9/b;->i:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Li9/b$a;

    invoke-direct {v0, p0}, Li9/b$a;-><init>(Li9/b;)V

    iput-object v0, p0, Li9/b;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Li9/b;->j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p2, p0, Li9/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Li9/b;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 0

    iget-object p0, p0, Li9/b;->j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object p0
.end method

.method public static synthetic b(Li9/b;)Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 0

    iget-object p0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Li9/b;->j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Li9/b;->k:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v1, p0, Li9/b;->b:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    iget v0, p0, Li9/b;->c:F

    invoke-static {v2, v0}, LNc/b;->M(FF)F

    move-result v0

    iput v0, p0, Li9/b;->c:F

    iget-object v1, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    invoke-virtual {p0}, Li9/b;->d()V

    invoke-virtual {p0}, Li9/b;->w()V

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

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

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    iget-object v4, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    iget-object v5, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    iget-object v6, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v3, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Li9/b;
    .locals 3

    new-instance v0, Li9/b;

    iget-object v1, p0, Li9/b;->j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iget-object v2, p0, Li9/b;->k:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Li9/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V

    iget-object v1, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget v1, p0, Li9/b;->c:F

    iput v1, v0, Li9/b;->c:F

    iget v1, p0, Li9/b;->b:F

    iput v1, v0, Li9/b;->b:F

    return-object v0
.end method

.method public f()V
    .locals 3

    iget-boolean v0, p0, Li9/b;->g:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li9/b;->g:Z

    :cond_0
    return-void
.end method

.method public g()F
    .locals 1

    iget v0, p0, Li9/b;->b:F

    return v0
.end method

.method public h()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public i()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Li9/b;->j:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Li9/b;->c:F

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Li9/b;->g:Z

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Li9/b;->n:Ljava/lang/Runnable;

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public n(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iget v0, p0, Li9/b;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Li9/b;->b:F

    if-eqz v0, :cond_1

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    :cond_1
    return-void
.end method

.method public o(F)V
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

    iget v0, p0, Li9/b;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Li9/b;->c:F

    if-eqz v0, :cond_1

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    :cond_1
    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerReference"
        }
    .end annotation

    iput-object p1, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object p1, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li9/b;->w()V

    :cond_0
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Li9/b;->d()V

    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    iget-object v0, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p0}, Li9/b;->d()V

    return-void
.end method

.method public s(FFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "pz",
            "rotation"
        }
    .end annotation

    iget-object v0, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p0}, Li9/b;->d()V

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    iget-object v0, p0, Li9/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Li9/b;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p0}, Li9/b;->d()V

    return-void
.end method

.method public u()V
    .locals 3

    iget-boolean v0, p0, Li9/b;->g:Z

    if-eqz v0, :cond_2

    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v1, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;
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

    iget-object v2, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

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

    iput-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Li9/b;->g:Z

    :cond_2
    return-void
.end method

.method public v()V
    .locals 1

    iget-boolean v0, p0, Li9/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li9/b;->m()V

    invoke-virtual {p0}, Li9/b;->w()V

    :cond_0
    iget-boolean v0, p0, Li9/b;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li9/b;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li9/b;->g:Z

    :cond_1
    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Li9/b;->e:I

    iget-object v1, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Li9/b;->f:I

    iget-object v1, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    invoke-virtual {v1}, LIc/m;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    iput v0, p0, Li9/b;->e:I

    iget-object v0, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    iput v0, p0, Li9/b;->f:I

    iget-object v0, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->g()I

    move-result v0

    iget-object v1, p0, Li9/b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->h()I

    move-result v1

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(I)V

    iget-object v0, p0, Li9/b;->d:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
