.class public final Lif/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/o;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/scene/Spatial;)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-array v2, v1, [Lcom/jme3/light/Light;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->removeLight(Lcom/jme3/light/Light;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static b(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/light/Light;",
            ">(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/light/LightList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

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

    invoke-static {v1, p1}, Lif/o;->b(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public static c(Lcom/jme3/light/Light;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Light"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lif/t;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lif/t;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static d(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)I
    .locals 4

    const-string v0, "light"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/light/LightList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static e(Ljava/lang/String;Lcom/jme3/scene/Spatial;)Lcom/jme3/light/Light;
    .locals 1

    const-string v0, "light name"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p1, p0}, Lif/s;->p(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/light/Light;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {p0, v0}, Lif/o;->e(Ljava/lang/String;Lcom/jme3/scene/Spatial;)Lcom/jme3/light/Light;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Spatial;
    .locals 2

    const-string v0, "light"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "subtree"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lif/o;->d(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {p0, v0}, Lif/o;->f(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Spatial;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public static g(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/light/Light;",
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

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

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

    invoke-static {v0, p1, p2}, Lif/o;->g(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    return-object p2
.end method
