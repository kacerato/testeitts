.class public final Lcom/jme3/animation/AnimControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field animationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private transient channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/animation/AnimChannel;",
            ">;"
        }
    .end annotation
.end field

.field private transient listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/animation/AnimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field skeleton:Lcom/jme3/animation/Skeleton;

.field private skeletonControl:Lcom/jme3/animation/SkeletonControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 6
    invoke-virtual {p0}, Lcom/jme3/animation/AnimControl;->reset()V

    return-void
.end method


# virtual methods
.method public addAnim(Lcom/jme3/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addListener(Lcom/jme3/animation/AnimEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given listener is already registered at this AnimControl"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearChannels()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimChannel;

    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/animation/AnimEventListener;

    invoke-virtual {v1}, Lcom/jme3/animation/AnimChannel;->getAnimationName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v1, v4}, Lcom/jme3/animation/AnimEventListener;->onAnimCycleDone(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Skeleton;

    iput-object p2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Animation;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Animation;

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->reset()V

    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v2, p1, v0}, Lcom/jme3/animation/AnimChannel;->update(FLcom/jme3/util/TempVars;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    iget-object p1, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->updateWorldVectors()V

    :cond_2
    return-void
.end method

.method public createChannel()Lcom/jme3/animation/AnimChannel;
    .locals 2

    new-instance v0, Lcom/jme3/animation/AnimChannel;

    invoke-direct {v0, p0}, Lcom/jme3/animation/AnimChannel;-><init>(Lcom/jme3/animation/AnimControl;)V

    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAnim(Ljava/lang/String;)Lcom/jme3/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/Animation;

    return-object p1
.end method

.method public getAnimationLength(Ljava/lang/String;)F
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Animation;->getLength()F

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist in this AnimControl"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimationNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getChannel(I)Lcom/jme3/animation/AnimChannel;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/AnimChannel;

    return-object p1
.end method

.method public getNumChannels()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSkeleton()Lcom/jme3/animation/Skeleton;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/control/AbstractControl;->jmeClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/AnimControl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyAnimChange(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimEventListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/jme3/animation/AnimEventListener;->onAnimChange(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyAnimCycleDone(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimEventListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/jme3/animation/AnimEventListener;->onAnimCycleDone(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "skeleton"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Skeleton;

    iput-object v1, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v1, "animations"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    :cond_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "targets"

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/jme3/animation/SkeletonControl;

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {p1, v0}, Lcom/jme3/animation/SkeletonControl;-><init>(Lcom/jme3/animation/Skeleton;)V

    iput-object p1, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    :cond_1
    return-void
.end method

.method public removeAnim(Lcom/jme3/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given animation does not exist in this AnimControl"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeListener(Lcom/jme3/animation/AnimEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given listener is not registered at this AnimControl"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->resetAndUpdate()V

    :cond_0
    return-void
.end method

.method public setAnimations(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Animation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    :cond_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v1, "skeleton"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    const-string v1, "animations"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
