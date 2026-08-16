.class public Lcom/jme3/anim/AnimFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final duration:F

.field private final fps:F

.field private final name:Ljava/lang/String;

.field private final rotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private final scales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;F)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    cmpl-float v5, p1, v3

    if-lez v5, :cond_1

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    iput-object p2, p0, Lcom/jme3/anim/AnimFactory;->name:Ljava/lang/String;

    iput p1, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    iput p3, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FPS must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private interpolateRotation(F)Lcom/jme3/math/Quaternion;
    .locals 6

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    cmpl-float v4, v3, p1

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;

    new-instance v3, Lcom/jme3/math/Quaternion;

    invoke-direct {v3}, Lcom/jme3/math/Quaternion;-><init>()V

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sub-float/2addr p1, v2

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    invoke-virtual {v3, v1, v0, p1}, Lcom/jme3/math/Quaternion;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)Lcom/jme3/math/Quaternion;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v3, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    :goto_2
    return-object v3
.end method

.method private interpolateScale(F)Lcom/jme3/math/Vector3f;
    .locals 6

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    cmpl-float v4, v3, p1

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sub-float/2addr p1, v2

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1, v0, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_2
    return-object v3
.end method

.method private interpolateTranslation(F)Lcom/jme3/math/Vector3f;
    .locals 6

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    cmpl-float v4, v3, p1

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sub-float/2addr p1, v2

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1, v0, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_2
    return-object v3
.end method


# virtual methods
.method public addKeyFrameRotation(ILcom/jme3/math/Quaternion;)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/anim/AnimFactory;->addTimeRotation(FLcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public addKeyFrameScale(ILcom/jme3/math/Vector3f;)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/anim/AnimFactory;->addTimeScale(FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addKeyFrameTransform(ILcom/jme3/math/Transform;)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/anim/AnimFactory;->addTimeTransform(FLcom/jme3/math/Transform;)V

    return-void
.end method

.method public addKeyFrameTranslation(ILcom/jme3/math/Vector3f;)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/anim/AnimFactory;->addTimeTranslation(FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addTimeRotation(FFFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 9
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    move-result-object p2

    .line 10
    iget-object p3, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "animation time out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTimeRotation(FLcom/jme3/math/Quaternion;)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 1
    iget v1, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p2, v0}, Lcom/jme3/math/Quaternion;->mult(F)Lcom/jme3/math/Quaternion;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation cannot have norm=0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "animation time out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTimeScale(FLcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "animation time out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTimeTransform(FLcom/jme3/math/Transform;)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Transform;->getTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/jme3/math/Transform;->getRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Transform;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "animation time out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTimeTranslation(FLcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "animation time out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildAnimation(Lcom/jme3/anim/util/HasLocalTransform;)Lcom/jme3/anim/AnimClip;
    .locals 10

    const/4 v0, 0x1

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-float v4, v3

    iget v5, p0, Lcom/jme3/anim/AnimFactory;->fps:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/anim/AnimFactory;->duration:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    iget-object v3, p0, Lcom/jme3/anim/AnimFactory;->rotations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/jme3/anim/AnimFactory;->scales:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/jme3/anim/AnimFactory;->translations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v6, v3, [F

    new-array v7, v3, [Lcom/jme3/math/Vector3f;

    new-array v8, v3, [Lcom/jme3/math/Quaternion;

    new-array v9, v3, [Lcom/jme3/math/Vector3f;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v6, v3

    invoke-direct {p0, v4}, Lcom/jme3/anim/AnimFactory;->interpolateTranslation(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-direct {p0, v4}, Lcom/jme3/anim/AnimFactory;->interpolateRotation(F)Lcom/jme3/math/Quaternion;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-direct {p0, v4}, Lcom/jme3/anim/AnimFactory;->interpolateScale(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v9, v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/jme3/anim/TransformTrack;

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/jme3/anim/TransformTrack;-><init>(Lcom/jme3/anim/util/HasLocalTransform;[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    new-array p1, v0, [Lcom/jme3/anim/AnimTrack;

    aput-object v1, p1, v2

    new-instance v0, Lcom/jme3/anim/AnimClip;

    iget-object v1, p0, Lcom/jme3/anim/AnimFactory;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jme3/anim/AnimClip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/jme3/anim/AnimClip;->setTracks([Lcom/jme3/anim/AnimTrack;)V

    return-object v0

    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v0

    goto :goto_0
.end method
