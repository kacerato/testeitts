.class public final Lif/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/s;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/scene/control/Control;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1, p2}, Lif/s;->A(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static B(Lcom/jme3/scene/Spatial;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-class v0, Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lif/s;->G(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcom/jme3/scene/Spatial;Lcom/jme3/material/Material;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/material/Material;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1, p2}, Lif/s;->C(Lcom/jme3/scene/Spatial;Lcom/jme3/material/Material;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static D(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/material/Material;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/material/Material;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->D(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static E(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Mesh;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1, p2}, Lif/s;->E(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Mesh;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static F(Lcom/jme3/scene/Spatial;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-class v0, Lcom/jme3/scene/Spatial;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lif/s;->G(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1, p2}, Lif/s;->G(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static H(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/texture/Texture;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/texture/Texture;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lif/s;->D(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/MatParam;

    invoke-static {p1, v2}, Lif/s;->a(Ljava/util/Collection;Lcom/jme3/material/MatParam;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lif/s;->F(Lcom/jme3/scene/Spatial;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalMatParamOverrides()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParamOverride;

    invoke-static {p1, v1}, Lif/s;->a(Ljava/util/Collection;Lcom/jme3/material/MatParam;)V

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static I(Lcom/jme3/scene/Node;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Node;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    const-string v1, "JmePhysicsIgnore"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-static {v0, p1}, Lif/s;->I(Lcom/jme3/scene/Node;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static J(Lcom/jme3/scene/Spatial;)V
    .locals 1

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clearCollisionData()V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->J(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;
    .locals 2

    const-string v0, "modelRoot"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    :goto_0
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-static {v0, v1, v0}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/jme3/math/Transform;

    invoke-direct {p0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-static {v0, p0, v0}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public static L(Lcom/jme3/scene/Spatial;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->L(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static M(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "world location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/scene/Spatial;->worldToLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transform ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static N(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Quaternion;)V
    .locals 1

    const-string v0, "world orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lif/s;->v(Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transform ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static O(Lcom/jme3/scene/Spatial;F)V
    .locals 3

    const-string v0, "world scale"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1, p1, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parent scale = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transform ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)V
    .locals 8

    const-string v0, "world transform"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v6, v0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v5, v1, v1}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rotation not invertible"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero in scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transform ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q(Lcom/jme3/scene/Spatial;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/Collection<",
            "Lcom/jme3/scene/Spatial;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Spatial;->hasAncestor(Lcom/jme3/scene/Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_0
    return v0
.end method

.method public static R(Lcom/jme3/scene/Spatial;)F
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "non-uniform scaling"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S(Lcom/jme3/scene/Spatial;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/asset/AssetManager;)V
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1, p2}, Lif/s;->S(Lcom/jme3/scene/Spatial;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/asset/AssetManager;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-static {v0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1, p2}, Lif/p;->e(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/ColorRGBA;Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    :cond_1
    return-void
.end method

.method public static T(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p1
.end method

.method public static U(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    :goto_0
    return-object p1
.end method

.method public static V(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, p0, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p1
.end method

.method public static W(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-static {p0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->loadIdentity()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :goto_0
    return-object p1
.end method

.method public static a(Ljava/util/Collection;Lcom/jme3/material/MatParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/texture/Texture;",
            ">;",
            "Lcom/jme3/material/MatParam;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v0

    sget-object v1, Lif/s$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture;

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lif/s;->b(Ljava/lang/Iterable;Lcom/jme3/texture/Texture;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/Iterable;Lcom/jme3/texture/Texture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/jme3/texture/Texture;",
            ">;",
            "Lcom/jme3/texture/Texture;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/scene/control/Control;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    instance-of v1, p0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-static {v1, p1}, Lif/s;->c(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public static d(Lcom/jme3/scene/Spatial;)I
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-static {p0}, Lif/p;->g(Lcom/jme3/scene/Mesh;)I

    move-result p0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->d(Lcom/jme3/scene/Spatial;)I

    move-result v0

    if-le v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_1
    return p0
.end method

.method public static e(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-static {v1, p1}, Lif/s;->e(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static f(Lcom/jme3/scene/Spatial;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getUserDataKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-static {v1}, Lif/s;->f(Lcom/jme3/scene/Spatial;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static g(Lcom/jme3/scene/Spatial;Lcom/jme3/material/Material;)I
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p0

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->g(Lcom/jme3/scene/Spatial;Lcom/jme3/material/Material;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static h(Lcom/jme3/scene/Spatial;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lif/p;->w(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Mesh;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static i(Lcom/jme3/scene/Spatial;)C
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/AssetLinkNode;

    if-eqz v0, :cond_0

    const/16 p0, 0x41

    return p0

    :cond_0
    instance-of v0, p0, Lcom/jme3/audio/AudioNode;

    if-eqz v0, :cond_1

    const/16 p0, 0x61

    return p0

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/BatchNode;

    if-eqz v0, :cond_2

    const/16 p0, 0x62

    return p0

    :cond_2
    instance-of v0, p0, Lcom/jme3/font/BitmapText;

    if-eqz v0, :cond_3

    const/16 p0, 0x74

    return p0

    :cond_3
    instance-of v0, p0, Lcom/jme3/scene/CameraNode;

    if-eqz v0, :cond_4

    const/16 p0, 0x63

    return p0

    :cond_4
    instance-of v0, p0, Lcom/jme3/scene/GeometryGroupNode;

    if-eqz v0, :cond_5

    const/16 p0, 0x47

    return p0

    :cond_5
    instance-of v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-eqz v0, :cond_6

    const/16 p0, 0x69

    return p0

    :cond_6
    instance-of v0, p0, Lcom/jme3/scene/instancing/InstancedNode;

    if-eqz v0, :cond_7

    const/16 p0, 0x4e

    return p0

    :cond_7
    instance-of v0, p0, Lcom/jme3/scene/LightNode;

    if-eqz v0, :cond_8

    const/16 p0, 0x4c

    return p0

    :cond_8
    instance-of v0, p0, Lcom/jme3/effect/ParticleEmitter;

    if-eqz v0, :cond_9

    const/16 p0, 0x65

    return p0

    :cond_9
    instance-of v0, p0, Lcom/jme3/ui/Picture;

    if-eqz v0, :cond_a

    const/16 p0, 0x70

    return p0

    :cond_a
    instance-of v0, p0, Lcom/jme3/scene/SimpleBatchNode;

    if-eqz v0, :cond_b

    const/16 p0, 0x42

    return p0

    :cond_b
    instance-of v0, p0, Lcom/jme3/scene/debug/SkeletonDebugger;

    if-eqz v0, :cond_c

    const/16 p0, 0x73

    return p0

    :cond_c
    instance-of v0, p0, Lcom/jme3/app/StatsView;

    if-eqz v0, :cond_d

    const/16 p0, 0x53

    return p0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerrainQuad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0x71

    return p0

    :cond_e
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_f

    const/16 p0, 0x67

    return p0

    :cond_f
    instance-of p0, p0, Lcom/jme3/scene/Node;

    if-eqz p0, :cond_10

    const/16 p0, 0x6e

    return p0

    :cond_10
    const/16 p0, 0x3f

    return p0
.end method

.method public static j(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Geometry;
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-static {v0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->j(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static k(Lcom/jme3/scene/Node;Ljava/lang/Class;)Lcom/jme3/scene/Spatial;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Lcom/jme3/scene/Node;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lcom/jme3/scene/Node;Ljava/lang/String;)Lcom/jme3/scene/Spatial;
    .locals 2

    const-string v0, "child name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Spatial;
    .locals 3

    const-string v0, "control"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "subtree"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/scene/control/AbstractControl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/control/AbstractControl;

    invoke-virtual {v0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {p0, v0}, Lif/s;->m(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_3
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static n(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/control/Control;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "control"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static o(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)Lcom/jme3/light/Light;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/light/Light;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "light class"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/light/Light;
    .locals 2

    const-string v0, "light name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    invoke-virtual {v0}, Lcom/jme3/light/Light;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lcom/jme3/scene/Geometry;Z)[Lcom/jme3/math/Vector3f;
    .locals 9

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array {v1, v0}, [Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v5, v8, v7, v3}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_1
    invoke-static {v1, v4}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v4}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static r(Lcom/jme3/scene/Spatial;)[Lcom/jme3/math/Vector3f;
    .locals 7

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-static {p0, v1}, Lif/s;->q(Lcom/jme3/scene/Geometry;Z)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Spatial;

    invoke-static {v5}, Lif/s;->r(Lcom/jme3/scene/Spatial;)[Lcom/jme3/math/Vector3f;

    move-result-object v5

    aget-object v6, v5, v4

    invoke-static {v2, v6}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object v5, v5, v1

    invoke-static {v0, v5}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "spatial should be a geometry or a node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/scene/Spatial;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->s(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static t(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/material/MatParamOverride;
    .locals 2

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parameterName"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalMatParamOverrides()Lcom/jme3/util/SafeArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static u(Lcom/jme3/scene/Spatial;Lcom/jme3/light/Light;)Z
    .locals 1

    const-string v0, "light"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Quaternion;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "orientation not invertible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Lcom/jme3/scene/Spatial;)Z
    .locals 1

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(Lcom/jme3/scene/Spatial;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->y(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static z(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    instance-of v3, v2, Lcom/jme3/anim/SkinningControl;

    if-nez v3, :cond_2

    instance-of v2, v2, Lcom/jme3/animation/SkeletonControl;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->z(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-object p1
.end method
