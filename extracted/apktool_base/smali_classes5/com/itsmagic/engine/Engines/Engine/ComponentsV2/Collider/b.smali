.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

.field public final b:Li9/a;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final d:Lcom/jme3/math/Transform;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public final h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/jme3/math/Transform;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
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

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->d:Lcom/jme3/math/Transform;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW8/b;

    invoke-virtual {p2}, LW8/b;->b()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p4

    invoke-virtual {p2}, LW8/b;->d()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v2

    invoke-static {v0, v2}, LNc/b;->S0(FF)F

    move-result v0

    invoke-static {p2, v0}, LNc/b;->S0(FF)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v2

    invoke-static {v0, v2}, LNc/b;->X0(FF)F

    move-result v0

    invoke-static {p2, v0}, LNc/b;->X0(FF)F

    move-result p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_3
    move-exception p2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, p2, v0, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v3}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_4
    move-exception p2

    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-virtual {p5}, LIc/m;->hashCode()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p2, p4, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p1, Li9/a;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p1, p2, p5}, Li9/a;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {p5}, LIc/m;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Z

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Li9/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Li9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h()V

    throw v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Li9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Li9/a;->g()F

    move-result v0

    return v0
.end method

.method public e()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->h:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Li9/a;->j()F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Z

    return v0
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW8/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LW8/b;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public i(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Li9/a;->m(F)V

    return-void
.end method

.method public j(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Li9/a;->n(F)V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerReference"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Li9/a;->o(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:Li9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Li9/a;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
