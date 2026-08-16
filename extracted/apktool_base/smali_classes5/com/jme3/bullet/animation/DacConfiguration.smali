.class public abstract Lcom/jme3/bullet/animation/DacConfiguration;
.super Lcom/jme3/bullet/control/AbstractPhysicsControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAlConfigs:Ljava/lang/String; = "alConfigs"

.field private static final tagAttachBoneNames:Ljava/lang/String; = "attachBoneNames"

.field private static final tagAttachModels:Ljava/lang/String; = "attachModels"

.field private static final tagBlConfigs:Ljava/lang/String; = "blConfigs"

.field private static final tagDamping:Ljava/lang/String; = "damping"

.field private static final tagEventDispatchImpulseThreshold:Ljava/lang/String; = "eventDispatchImpulseThreshold"

.field private static final tagGravity:Ljava/lang/String; = "gravity"

.field private static final tagIgnoredHops:Ljava/lang/String; = "ignoredHops"

.field private static final tagLinkedBoneJoints:Ljava/lang/String; = "linkedBoneJoints"

.field private static final tagLinkedBoneNames:Ljava/lang/String; = "linkedBoneNames"

.field private static final tagMainBoneName:Ljava/lang/String; = "mainBoneName"

.field private static final tagRelativeTolerance:Ljava/lang/String; = "relativeTolerance"

.field private static final tagTorsoConfig:Ljava/lang/String; = "torsoConfig"

.field public static final torsoName:Ljava/lang/String; = ""


# instance fields
.field private alConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/animation/LinkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private attachModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field private blConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/animation/LinkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private damping:F

.field private eventDispatchImpulseThreshold:F

.field private gravityVector:Lcom/jme3/math/Vector3f;

.field private ignoredHops:I

.field private jointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/animation/RangeOfMotion;",
            ">;"
        }
    .end annotation
.end field

.field private mainBoneName:Ljava/lang/String;

.field private relativeTolerance:F

.field private torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/DacConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/DacConfiguration;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->damping:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold:F

    const v1, 0x3a83126f    # 0.001f

    iput v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops:I

    new-instance v1, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {v1}, Lcom/jme3/bullet/animation/LinkConfig;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName:Ljava/lang/String;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, -0x3ee33333    # -9.8f

    invoke-direct {v1, v0, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private verifyNotAddedToSpatial(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while the Control is added to a Spatial."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addUnlinkedDescendants(Lcom/jme3/anim/Joint;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/Joint;",
            "Ljava/util/Collection<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    .line 7
    invoke-virtual {v0}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/anim/Joint;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addUnlinkedDescendants(Lcom/jme3/animation/Bone;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Bone;",
            "Ljava/util/Collection<",
            "Lcom/jme3/animation/Bone;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 2
    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/animation/Bone;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public areWithinTolerance(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    invoke-static {p1, p2, v0}, Ljf/h;->g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public attach(Ljava/lang/String;FLcom/jme3/scene/Spatial;)V
    .locals 4

    .line 1
    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 3
    invoke-static {p3}, Lcom/jme3/bullet/animation/RagUtils;->validate(Lcom/jme3/scene/Spatial;)V

    .line 4
    const-string v0, "add an attachment"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasAttachmentLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/jme3/bullet/animation/DacConfiguration;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Bone {0} already had an attachment."

    .line 7
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p3, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {p3, p2}, Lcom/jme3/bullet/animation/LinkConfig;-><init>(F)V

    .line 11
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attach(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/scene/Spatial;)V
    .locals 4

    .line 12
    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    const-string v0, "configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p2}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v0

    sget-object v1, Lcom/jme3/bullet/animation/CenterHeuristic;->Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

    if-eq v0, v1, :cond_1

    .line 15
    invoke-static {p3}, Lcom/jme3/bullet/animation/RagUtils;->validate(Lcom/jme3/scene/Spatial;)V

    .line 16
    const-string v0, "add an attachment"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasAttachmentLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/jme3/bullet/animation/DacConfiguration;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Bone {0} already had an attachment."

    .line 19
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot center attachment on Joint."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachmentConfig(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/LinkConfig;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No attachment link for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachmentMass(Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->attachmentConfig(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->mass()F

    move-result p1

    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    check-cast p2, Lcom/jme3/bullet/animation/DacConfiguration;

    iget-object p2, p2, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public config(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;
    .locals 2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/LinkConfig;

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No bone/torso named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public countAttachments()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public countLinkedBones()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public countLinks()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinkedBones()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countAttachments()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public damping()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->damping:F

    return v0
.end method

.method public detach(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasAttachmentLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlink an attachment"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No attachment bone named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventDispatchImpulseThreshold()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold:F

    return v0
.end method

.method public findManager(Lcom/jme3/anim/Joint;)Ljava/lang/String;
    .locals 2

    .line 6
    const-string v0, "start joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object p1

    if-nez p1, :cond_0

    .line 10
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public findManager(Lcom/jme3/animation/Bone;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "start bone"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAttachmentModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No attachment link for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJointLimits(Ljava/lang/String;)Lcom/jme3/bullet/animation/RangeOfMotion;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/RangeOfMotion;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No linked bone named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public hasAttachmentLink(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public hasBoneLink(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public ignoredHops()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops:I

    return v0
.end method

.method public link(Ljava/lang/String;FLcom/jme3/bullet/animation/RangeOfMotion;)V
    .locals 4

    .line 1
    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 3
    const-string v0, "range of motion"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "link a bone"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/jme3/bullet/animation/DacConfiguration;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Bone {0} is already linked."

    .line 7
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p3, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {p3, p2}, Lcom/jme3/bullet/animation/LinkConfig;-><init>(F)V

    .line 11
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public link(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/bullet/animation/RangeOfMotion;)V
    .locals 4

    .line 12
    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    const-string v0, "configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    const-string v0, "range of motion"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    const-string v0, "link a bone"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/jme3/bullet/animation/DacConfiguration;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Bone {0} is already linked."

    .line 18
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public listAttachmentBoneNames()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countAttachments()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public listLinkedBoneNames()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinkedBones()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public mainBoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName:Ljava/lang/String;

    return-object v0
.end method

.method public managerMap(Lcom/jme3/anim/Armature;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacConfiguration;->findManager(Lcom/jme3/anim/Joint;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public managerMap(Lcom/jme3/animation/Skeleton;)[Ljava/lang/String;
    .locals 4

    .line 5
    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    invoke-virtual {p1, v2}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacConfiguration;->findManager(Lcom/jme3/animation/Bone;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public mass(Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->config(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/LinkConfig;->mass()F

    move-result p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "ignoredHops"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops:I

    const-string v0, "damping"

    const v1, 0x3f19999a    # 0.6f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->damping:F

    const-string v0, "eventDispatchImpulseThreshold"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold:F

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "linkedBoneNames"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "linkedBoneJoints"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    const-string v3, "blConfigs"

    invoke-interface {p1, v3, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    aget-object v6, v0, v5

    aget-object v7, v2, v5

    check-cast v7, Lcom/jme3/bullet/animation/RangeOfMotion;

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    aget-object v8, v3, v5

    check-cast v8, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "mainBoneName"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "attachBoneNames"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "attachModels"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    const-string v3, "alConfigs"

    invoke-interface {p1, v3, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v3

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    aget-object v6, v2, v4

    check-cast v6, Lcom/jme3/scene/Spatial;

    iget-object v7, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    aget-object v7, v3, v4

    check-cast v7, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "torsoConfig"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/LinkConfig;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    const-string v0, "gravity"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    const-string v0, "relativeTolerance"

    const v1, 0x3a83126f    # 0.001f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    return-void
.end method

.method public relativeTolerance()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    return v0
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DynamicAnimControl does not support local physics."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttachmentConfig(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No attachment link for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAttachmentMass(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/LinkConfig;

    new-instance v1, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {v1, p2, v0}, Lcom/jme3/bullet/animation/LinkConfig;-><init>(FLcom/jme3/bullet/animation/LinkConfig;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No attachment link for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setConfig(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object p1

    sget-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

    if-eq p1, v0, :cond_0

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot center torso on Joint."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No bone/torso named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setDamping(F)V
    .locals 1

    const-string v0, "damping ratio"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->damping:F

    return-void
.end method

.method public setEventDispatchImpulseThreshold(F)V
    .locals 1

    const-string v0, "threshold"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold:F

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "gravity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setIgnoredHops(I)V
    .locals 1

    const-string v0, "number of hops"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "alter ignored hops"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    iput p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops:I

    return-void
.end method

.method public setJointLimits(Ljava/lang/String;Lcom/jme3/bullet/animation/RangeOfMotion;)V
    .locals 1

    const-string v0, "range of motion"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No linked bone named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMainBoneName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName:Ljava/lang/String;

    return-void
.end method

.method public setMass(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/jme3/bullet/animation/LinkConfig;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {p1, p2, v0}, Lcom/jme3/bullet/animation/LinkConfig;-><init>(FLcom/jme3/bullet/animation/LinkConfig;)V

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/LinkConfig;

    new-instance v1, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-direct {v1, p2, v0}, Lcom/jme3/bullet/animation/LinkConfig;-><init>(FLcom/jme3/bullet/animation/LinkConfig;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No bone/torso named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRelativeTolerance(F)V
    .locals 1

    const-string v0, "new tolerance"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    return-void
.end method

.method public totalMass()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/LinkConfig;->mass()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/LinkConfig;->mass()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/LinkConfig;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/LinkConfig;->mass()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public unlinkBone(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlink a bone"

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->verifyNotAddedToSpatial(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No linked bone named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops:I

    const-string v1, "ignoredHops"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->damping:F

    const-string v1, "damping"

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold:F

    const-string v1, "eventDispatchImpulseThreshold"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinkedBones()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    new-array v3, v0, [Lcom/jme3/bullet/animation/RangeOfMotion;

    new-array v0, v0, [Lcom/jme3/bullet/animation/LinkConfig;

    iget-object v4, p0, Lcom/jme3/bullet/animation/DacConfiguration;->blConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v1, v6

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacConfiguration;->jointMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/bullet/animation/RangeOfMotion;

    aput-object v8, v3, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/bullet/animation/LinkConfig;

    aput-object v7, v0, v6

    add-int/2addr v6, v2

    goto :goto_0

    :cond_0
    const-string v4, "linkedBoneNames"

    const/4 v6, 0x0

    invoke-interface {p1, v1, v4, v6}, Lcom/jme3/export/OutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "linkedBoneJoints"

    invoke-interface {p1, v3, v1, v6}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    const-string v1, "blConfigs"

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName:Ljava/lang/String;

    const-string v1, "mainBoneName"

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countAttachments()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    new-array v3, v0, [Lcom/jme3/scene/Spatial;

    new-array v0, v0, [Lcom/jme3/bullet/animation/LinkConfig;

    iget-object v4, p0, Lcom/jme3/bullet/animation/DacConfiguration;->alConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v1, v5

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacConfiguration;->attachModelMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/scene/Spatial;

    aput-object v8, v3, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/bullet/animation/LinkConfig;

    aput-object v7, v0, v5

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    const-string v2, "attachBoneNames"

    invoke-interface {p1, v1, v2, v6}, Lcom/jme3/export/OutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "attachModels"

    invoke-interface {p1, v3, v1, v6}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    const-string v1, "alConfigs"

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->torsoConfig:Lcom/jme3/bullet/animation/LinkConfig;

    const-string v1, "torsoConfig"

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->gravityVector:Lcom/jme3/math/Vector3f;

    const-string v1, "gravity"

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/animation/DacConfiguration;->relativeTolerance:F

    const-string v1, "relativeTolerance"

    const v2, 0x3a83126f    # 0.001f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
