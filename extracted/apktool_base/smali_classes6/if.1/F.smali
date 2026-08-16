.class public Lif/F;
.super Lif/y;
.source "SourceFile"


# static fields
.field public static final t:Ljava/util/logging/Logger;


# instance fields
.field public r:F

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/F;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/F;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lif/h;->Enabled:Lif/h;

    invoke-direct {p0, v0}, Lif/y;-><init>(Lif/h;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lif/F;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iget-object v2, p0, Lif/y;->k:Lcom/jme3/scene/Node;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Physics Debug Root Node"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lif/F;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lif/F;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 2

    invoke-super {p0, p1}, Lif/y;->render(Lcom/jme3/renderer/RenderManager;)V

    iget-object v0, p0, Lif/F;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getPreViews()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lif/F;->f(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getMainViews()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lif/F;->f(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getPostViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lif/F;->f(Ljava/util/List;)V

    iget-object p1, p0, Lif/F;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iget v1, p0, Lif/F;->r:F

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0

    invoke-super {p0, p1}, Lif/v;->update(F)V

    iput p1, p0, Lif/F;->r:F

    return-void
.end method
