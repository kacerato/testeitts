.class public Lcom/jme3/anim/SingleLayerInfluenceMask;
.super Lcom/jme3/anim/ArmatureMask;
.source "SourceFile"


# instance fields
.field private animComposer:Lcom/jme3/anim/AnimComposer;

.field private targetLayer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/anim/ArmatureMask;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/anim/AnimComposer;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/anim/ArmatureMask;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/anim/AnimComposer;Lcom/jme3/anim/Armature;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3}, Lcom/jme3/anim/ArmatureMask;-><init>(Lcom/jme3/anim/Armature;)V

    .line 3
    iput-object p1, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    return-void
.end method

.method private isAffectedByUpperLayers(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    invoke-virtual {v0}, Lcom/jme3/anim/AnimComposer;->getLayerNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    invoke-virtual {v4, v3}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/anim/AnimLayer;->getCurrentAction()Lcom/jme3/anim/tween/action/Action;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/anim/AnimLayer;->getMask()Lcom/jme3/anim/AnimationMask;

    move-result-object v3

    instance-of v4, v3, Lcom/jme3/anim/SingleLayerInfluenceMask;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/jme3/anim/SingleLayerInfluenceMask;

    invoke-direct {v3, p1}, Lcom/jme3/anim/SingleLayerInfluenceMask;->simpleContains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_3
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/jme3/anim/AnimationMask;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_4
    return v1
.end method

.method private simpleContains(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/anim/ArmatureMask;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jme3/anim/SingleLayerInfluenceMask;->simpleContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/anim/SingleLayerInfluenceMask;->isAffectedByUpperLayers(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTargetLayer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/anim/ArmatureMask;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "targetLayer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    return-void
.end method

.method public setAnimComposer(Lcom/jme3/anim/AnimComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->animComposer:Lcom/jme3/anim/AnimComposer;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/anim/ArmatureMask;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/SingleLayerInfluenceMask;->targetLayer:Ljava/lang/String;

    const-string v1, "targetLayer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
