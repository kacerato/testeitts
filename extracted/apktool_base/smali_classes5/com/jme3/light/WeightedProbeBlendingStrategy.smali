.class public Lcom/jme3/light/WeightedProbeBlendingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/light/LightProbeBlendingStrategy;


# static fields
.field private static final MAX_PROBES:I = 0x3


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

    iput-object v0, p0, Lcom/jme3/light/WeightedProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public populateProbes(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/light/WeightedProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/jme3/light/WeightedProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/LightProbe;

    invoke-virtual {v1}, Lcom/jme3/light/LightProbe;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/jme3/light/Light;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/light/WeightedProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public registerProbe(Lcom/jme3/light/LightProbe;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/WeightedProbeBlendingStrategy;->lightProbes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
