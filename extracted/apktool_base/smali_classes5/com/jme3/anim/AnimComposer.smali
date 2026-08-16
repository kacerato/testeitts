.class public Lcom/jme3/anim/AnimComposer;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# static fields
.field public static final DEFAULT_LAYER:Ljava/lang/String; = "Default"


# instance fields
.field private actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/anim/tween/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private animClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/anim/AnimClip;",
            ">;"
        }
    .end annotation
.end field

.field private globalSpeed:F

.field private layers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/anim/AnimLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    new-instance v1, Lcom/jme3/anim/AnimLayer;

    const/4 v2, 0x0

    const-string v3, "Default"

    invoke-direct {v1, v3, v2}, Lcom/jme3/anim/AnimLayer;-><init>(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/tween/action/Action;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->makeAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public varargs actionBlended(Ljava/lang/String;Lcom/jme3/anim/tween/action/BlendSpace;[Ljava/lang/String;)Lcom/jme3/anim/tween/action/BlendAction;
    .locals 4

    array-length v0, p3

    new-array v1, v0, [Lcom/jme3/anim/tween/action/BlendableAction;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {p0, v3}, Lcom/jme3/anim/AnimComposer;->makeAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v3

    check-cast v3, Lcom/jme3/anim/tween/action/BlendableAction;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/jme3/anim/tween/action/BlendAction;

    invoke-direct {p3, p2, v1}, Lcom/jme3/anim/tween/action/BlendAction;-><init>(Lcom/jme3/anim/tween/action/BlendSpace;[Lcom/jme3/anim/tween/action/BlendableAction;)V

    iget-object p2, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public varargs actionSequence(Ljava/lang/String;[Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/action/BaseAction;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/action/BaseAction;

    invoke-static {p2}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/jme3/anim/tween/action/BaseAction;-><init>(Lcom/jme3/anim/tween/Tween;)V

    iget-object p2, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public addAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAnimClip(Lcom/jme3/anim/AnimClip;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/anim/AnimClip;

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/anim/AnimClip;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/anim/tween/action/Action;

    invoke-virtual {p1, v3}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/anim/tween/action/Action;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    iput-object p2, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/anim/AnimLayer;

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/anim/AnimLayer;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/jme3/anim/AnimLayer;

    const/4 v0, 0x0

    const-string v1, "Default"

    invoke-direct {p1, v1, v0}, Lcom/jme3/anim/AnimLayer;-><init>(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/AnimLayer;

    iget v2, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    invoke-virtual {v1, p1, v2}, Lcom/jme3/anim/AnimLayer;->update(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/tween/action/Action;

    return-object p1
.end method

.method public getAnimClip(Ljava/lang/String;)Lcom/jme3/anim/AnimClip;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/AnimClip;

    return-object p1
.end method

.method public getAnimClips()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/anim/AnimClip;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAnimClipsNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAction()Lcom/jme3/anim/tween/action/Action;
    .locals 1

    .line 1
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/jme3/anim/AnimComposer;->getCurrentAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/jme3/anim/AnimLayer;->getCurrentAction()Lcom/jme3/anim/tween/action/Action;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    return v0
.end method

.method public getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/AnimLayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayerManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/anim/AnimLayer;->getManager()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLayerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTime()D
    .locals 2

    .line 1
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/jme3/anim/AnimComposer;->getTime(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTime(Ljava/lang/String;)D
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/jme3/anim/AnimLayer;->getTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasAction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasAnimClip(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/AnimComposer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public makeAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/AnimClip;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/jme3/anim/tween/action/ClipAction;

    invoke-direct {p1, v0}, Lcom/jme3/anim/tween/action/ClipAction;-><init>(Lcom/jme3/anim/AnimClip;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find clip named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeLayer(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V
    .locals 1

    new-instance v0, Lcom/jme3/anim/AnimLayer;

    invoke-direct {v0, p1, p2}, Lcom/jme3/anim/AnimLayer;-><init>(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V

    iget-object p2, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "animClipMap"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    const-string v0, "globalSpeed"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "layers"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    new-instance v0, Lcom/jme3/anim/AnimLayer;

    const/4 v1, 0x0

    const-string v2, "Default"

    invoke-direct {v0, v2, v1}, Lcom/jme3/anim/AnimLayer;-><init>(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/tween/action/Action;

    return-object p1
.end method

.method public removeAnimClip(Lcom/jme3/anim/AnimClip;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given animation does not exist in this AnimControl"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCurrentAction()V
    .locals 1

    .line 1
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/jme3/anim/AnimComposer;->removeCurrentAction(Ljava/lang/String;)V

    return-void
.end method

.method public removeCurrentAction(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Lcom/jme3/anim/tween/action/Action;)V

    return-void
.end method

.method public removeLayer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/AnimLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Lcom/jme3/anim/tween/action/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurrentAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 2

    .line 1
    const-string v0, "Default"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/anim/AnimComposer;->setCurrentAction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/anim/tween/action/Action;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/anim/AnimComposer;->setCurrentAction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/anim/tween/action/Action;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentAction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/anim/tween/action/Action;
    .locals 1

    .line 3
    invoke-virtual {p0, p2}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    .line 5
    invoke-virtual {p2, p1, v0, p3}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;Z)V

    return-object v0
.end method

.method public setGlobalSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    return-void
.end method

.method public setLayerManager(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/anim/AnimLayer;->setManager(Ljava/lang/Object;)V

    return-void
.end method

.method public setTime(D)V
    .locals 1

    .line 1
    const-string v0, "Default"

    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/anim/AnimComposer;->setTime(Ljava/lang/String;D)V

    return-void
.end method

.method public setTime(Ljava/lang/String;D)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/anim/AnimComposer;->getLayer(Ljava/lang/String;)Lcom/jme3/anim/AnimLayer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/jme3/anim/AnimLayer;->getCurrentAction()Lcom/jme3/anim/tween/action/Action;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/jme3/anim/AnimLayer;->setTime(D)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no action running in layer "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
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

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->animClipMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "animClipMap"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    iget v0, p0, Lcom/jme3/anim/AnimComposer;->globalSpeed:F

    const-string v1, "globalSpeed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/anim/AnimComposer;->layers:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "layers"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
