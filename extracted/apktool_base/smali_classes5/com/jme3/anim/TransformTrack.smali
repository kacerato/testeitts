.class public Lcom/jme3/anim/TransformTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/AnimTrack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jme3/anim/AnimTrack<",
        "Lcom/jme3/math/Transform;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

.field private length:D

.field private rotations:Lcom/jme3/animation/CompactQuaternionArray;

.field private scales:Lcom/jme3/animation/CompactVector3Array;

.field private target:Lcom/jme3/anim/util/HasLocalTransform;

.field private times:[F

.field private translations:Lcom/jme3/animation/CompactVector3Array;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/anim/util/HasLocalTransform;[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    .line 5
    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    .line 6
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/jme3/anim/TransformTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/util/HasLocalTransform;

    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    return-void
.end method

.method public getDataAtTime(DLcom/jme3/math/Transform;)V
    .locals 10

    double-to-float p1, p1

    .line 2
    iget-object p2, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/4 v4, 0x0

    if-ltz v3, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    aget v3, p2, v1

    cmpl-float v5, p1, v3

    if-ltz v5, :cond_2

    add-int/lit8 v0, v0, -0x2

    .line 4
    aget p2, p2, v0

    sub-float p2, v3, p2

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    sub-float/2addr p1, v3

    div-float v2, p1, p2

    :cond_1
    move v5, v1

    :goto_0
    move v4, v2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    move v0, v4

    :goto_1
    if-ge v4, v1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    aget v2, v2, v4

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3

    add-int/lit8 p2, v4, 0x1

    move v0, v4

    move v4, p2

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    aget v2, v1, v0

    sub-float/2addr p1, v2

    aget p2, v1, p2

    sub-float/2addr p2, v2

    div-float v2, p1, p2

    move v5, v0

    goto :goto_0

    .line 7
    :goto_2
    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    if-nez p1, :cond_4

    .line 8
    invoke-static {}, Lcom/jme3/anim/interpolator/FrameInterpolator;->getThreadDefault()Lcom/jme3/anim/interpolator/FrameInterpolator;

    move-result-object p1

    :cond_4
    move-object v3, p1

    .line 9
    iget-object v6, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    iget-object v7, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    iget-object v8, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    iget-object v9, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    invoke-virtual/range {v3 .. v9}, Lcom/jme3/anim/interpolator/FrameInterpolator;->interpolate(FILcom/jme3/animation/CompactVector3Array;Lcom/jme3/animation/CompactQuaternionArray;Lcom/jme3/animation/CompactVector3Array;[F)Lcom/jme3/math/Transform;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 12
    :cond_5
    iget-object p2, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    .line 14
    :cond_6
    iget-object p2, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p2, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    :cond_7
    return-void

    .line 16
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_9

    .line 17
    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz p1, :cond_a

    .line 19
    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public bridge synthetic getDataAtTime(DLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/jme3/math/Transform;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/anim/TransformTrack;->getDataAtTime(DLcom/jme3/math/Transform;)V

    return-void
.end method

.method public getFrameInterpolator()Lcom/jme3/anim/interpolator/FrameInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/TransformTrack;->length:D

    return-wide v0
.end method

.method public getRotations()[Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Quaternion;

    :goto_0
    return-object v0
.end method

.method public getScales()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

    :goto_0
    return-object v0
.end method

.method public getTarget()Lcom/jme3/anim/util/HasLocalTransform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    return-object v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    return-object v0
.end method

.method public getTranslations()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

    :goto_0
    return-object v0
.end method

.method public jmeClone()Lcom/jme3/anim/TransformTrack;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/TransformTrack;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->jmeClone()Lcom/jme3/anim/TransformTrack;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "translations"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactVector3Array;

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v0, "rotations"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v0, "times"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    const-string v0, "scales"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactVector3Array;

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const-string v0, "target"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/util/HasLocalTransform;

    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    invoke-virtual {p0, p1}, Lcom/jme3/anim/TransformTrack;->setTimes([F)V

    return-void
.end method

.method public setFrameInterpolator(Lcom/jme3/anim/interpolator/FrameInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-void
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/TransformTrack;->setTimes([F)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/jme3/anim/TransformTrack;->setKeyframesTranslation([Lcom/jme3/math/Vector3f;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/jme3/anim/TransformTrack;->setKeyframesRotation([Lcom/jme3/math/Quaternion;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Lcom/jme3/anim/TransformTrack;->setKeyframesScale([Lcom/jme3/math/Vector3f;)V

    :cond_3
    return-void
.end method

.method public setKeyframesRotation([Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {v0}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No rotations were provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TransformTrack lacks keyframe times.  Please invoke setTimes() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyframesScale([Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v0}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No scale vectors were provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TransformTrack lacks keyframe times.  Please invoke setTimes() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyframesTranslation([Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v0}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No translations were provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TransformTrack lacks keyframe times.  Please invoke setTimes() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTarget(Lcom/jme3/anim/util/HasLocalTransform;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    return-void
.end method

.method public setTimes([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aget p1, p1, v1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/jme3/anim/TransformTrack;->length:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No keyframe times were provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "translations"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v1, "rotations"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->times:[F

    const-string v1, "times"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "scales"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/TransformTrack;->target:Lcom/jme3/anim/util/HasLocalTransform;

    const-string v1, "target"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
