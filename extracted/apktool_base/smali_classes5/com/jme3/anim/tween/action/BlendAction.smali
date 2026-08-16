.class public Lcom/jme3/anim/tween/action/BlendAction;
.super Lcom/jme3/anim/tween/action/BlendableAction;
.source "SourceFile"


# instance fields
.field private final blendSpace:Lcom/jme3/anim/tween/action/BlendSpace;

.field private blendWeight:F

.field private firstActiveIndex:I

.field private secondActiveIndex:I

.field private speedFactors:[D

.field private final targetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/anim/util/HasLocalTransform;",
            "Lcom/jme3/math/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private final timeFactor:[D


# direct methods
.method public varargs constructor <init>(Lcom/jme3/anim/tween/action/BlendSpace;[Lcom/jme3/anim/tween/action/BlendableAction;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/jme3/anim/tween/action/BlendableAction;-><init>([Lcom/jme3/anim/tween/Tween;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    array-length v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->timeFactor:[D

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendSpace:Lcom/jme3/anim/tween/action/BlendSpace;

    invoke-interface {p1, p0}, Lcom/jme3/anim/tween/action/BlendSpace;->setBlendAction(Lcom/jme3/anim/tween/action/BlendAction;)V

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/jme3/anim/tween/action/Action;->setLength(D)V

    :cond_0
    invoke-virtual {v2}, Lcom/jme3/anim/tween/action/BlendableAction;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/anim/util/HasLocalTransform;

    iget-object v4, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Transform;

    if-nez v4, :cond_1

    new-instance v4, Lcom/jme3/math/Transform;

    invoke-direct {v4}, Lcom/jme3/math/Transform;-><init>()V

    iget-object v5, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    array-length p2, p1

    if-ge v0, p2, :cond_5

    iget-object p2, p0, Lcom/jme3/anim/tween/action/BlendAction;->timeFactor:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, p2, v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v1

    cmpl-double p1, p1, v1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide p1

    cmpl-double p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/jme3/anim/tween/action/BlendAction;->timeFactor:[D

    iget-object p2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendAction;->applyDefaultSpeedFactors()V

    return-void
.end method

.method public static synthetic a(Lcom/jme3/anim/tween/action/BlendAction;Lcom/jme3/anim/tween/action/Action;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/anim/tween/action/BlendAction;->lambda$applyDefaultSpeedFactors$0(Lcom/jme3/anim/tween/action/Action;)D

    move-result-wide p0

    return-wide p0
.end method

.method private collect(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->getWeight()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->getTransitionWeight()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lcom/jme3/anim/util/HasLocalTransform;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/jme3/anim/util/HasLocalTransform;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->getTransitionWeight()F

    move-result v1

    invoke-virtual {v0, v0, p2, v1}, Lcom/jme3/math/Transform;->interpolateTransforms(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;F)V

    invoke-interface {p1, v0}, Lcom/jme3/anim/util/HasLocalTransform;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$applyDefaultSpeedFactors$0(Lcom/jme3/anim/tween/action/Action;)D
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public applyDefaultSpeedFactors()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendAction;->getActions()[Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/jme3/anim/tween/action/a;

    invoke-direct {v1, p0}, Lcom/jme3/anim/tween/action/a;-><init>(Lcom/jme3/anim/tween/action/BlendAction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/anim/tween/action/BlendAction;->setSpeedFactors([D)V

    return-void
.end method

.method public clearSpeedFactors()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->speedFactors:[D

    return-void
.end method

.method public collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v0, p2, p3}, Lcom/jme3/math/Transform;->interpolateTransforms(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;F)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    iget p3, p0, Lcom/jme3/anim/tween/action/BlendAction;->secondActiveIndex:I

    aget-object p2, p2, p3

    if-ne p4, p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/jme3/anim/tween/action/BlendAction;->collect(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;)V

    :cond_2
    return-void
.end method

.method public doInterpolate(D)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendSpace:Lcom/jme3/anim/tween/action/BlendSpace;

    invoke-interface {v0}, Lcom/jme3/anim/tween/action/BlendSpace;->getWeight()F

    move-result v0

    iput v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendWeight:F

    iget-object v0, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    iget v1, p0, Lcom/jme3/anim/tween/action/BlendAction;->firstActiveIndex:I

    aget-object v1, v0, v1

    check-cast v1, Lcom/jme3/anim/tween/action/BlendableAction;

    iget v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->secondActiveIndex:I

    aget-object v0, v0, v2

    check-cast v0, Lcom/jme3/anim/tween/action/BlendableAction;

    invoke-virtual {v1, p0}, Lcom/jme3/anim/tween/action/BlendableAction;->setCollectTransformDelegate(Lcom/jme3/anim/tween/action/BlendableAction;)V

    invoke-virtual {v0, p0}, Lcom/jme3/anim/tween/action/BlendableAction;->setCollectTransformDelegate(Lcom/jme3/anim/tween/action/BlendableAction;)V

    iget v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendWeight:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/jme3/anim/tween/action/BlendableAction;->setWeight(F)V

    iget-object v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->timeFactor:[D

    iget v3, p0, Lcom/jme3/anim/tween/action/BlendAction;->firstActiveIndex:I

    aget-wide v3, v2, v3

    mul-double/2addr v3, p1

    invoke-virtual {v1, v3, v4}, Lcom/jme3/anim/tween/action/BlendableAction;->interpolate(D)Z

    iget v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendWeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/anim/util/HasLocalTransform;

    iget-object v4, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Transform;

    invoke-direct {p0, v3, v4}, Lcom/jme3/anim/tween/action/BlendAction;->collect(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendWeight:F

    invoke-virtual {v0, v2}, Lcom/jme3/anim/tween/action/BlendableAction;->setWeight(F)V

    iget-object v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->timeFactor:[D

    iget v3, p0, Lcom/jme3/anim/tween/action/BlendAction;->secondActiveIndex:I

    aget-wide v3, v2, v3

    mul-double/2addr p1, v3

    invoke-virtual {v0, p1, p2}, Lcom/jme3/anim/tween/action/BlendableAction;->interpolate(D)Z

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/jme3/anim/tween/action/BlendableAction;->setCollectTransformDelegate(Lcom/jme3/anim/tween/action/BlendableAction;)V

    invoke-virtual {v0, p1}, Lcom/jme3/anim/tween/action/BlendableAction;->setCollectTransformDelegate(Lcom/jme3/anim/tween/action/BlendableAction;)V

    return-void
.end method

.method public getActions()[Lcom/jme3/anim/tween/action/Action;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    return-object v0
.end method

.method public getBlendSpace()Lcom/jme3/anim/tween/action/BlendSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendSpace:Lcom/jme3/anim/tween/action/BlendSpace;

    return-object v0
.end method

.method public getSpeed()D
    .locals 7

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->speedFactors:[D

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/jme3/anim/tween/action/Action;->getSpeed()D

    move-result-wide v0

    iget v2, p0, Lcom/jme3/anim/tween/action/BlendAction;->blendWeight:F

    iget-object v3, p0, Lcom/jme3/anim/tween/action/BlendAction;->speedFactors:[D

    iget v4, p0, Lcom/jme3/anim/tween/action/BlendAction;->firstActiveIndex:I

    aget-wide v4, v3, v4

    double-to-float v4, v4

    iget v5, p0, Lcom/jme3/anim/tween/action/BlendAction;->secondActiveIndex:I

    aget-wide v5, v3, v5

    double-to-float v3, v5

    invoke-static {v2, v4, v3}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/jme3/anim/tween/action/Action;->getSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedFactors()[D
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->speedFactors:[D

    return-object v0
.end method

.method public getTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/anim/util/HasLocalTransform;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendAction;->targetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setFirstActiveIndex(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendAction;->firstActiveIndex:I

    return-void
.end method

.method public setSecondActiveIndex(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendAction;->secondActiveIndex:I

    return-void
.end method

.method public varargs setSpeedFactors([D)V
    .locals 2

    array-length v0, p1

    iget-object v1, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendAction;->speedFactors:[D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array length must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
