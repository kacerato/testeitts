.class public Lcom/jme3/light/BasicProbeBlendingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/light/LightProbeBlendingStrategy;


# instance fields
.field lightProbes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/light/LightProbe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/BasicProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public populateProbes(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/light/BasicProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/light/BasicProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/light/LightProbe;

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/light/BasicProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public registerProbe(Lcom/jme3/light/LightProbe;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/BasicProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
