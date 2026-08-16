.class public Lcom/jme3/animation/SpatialTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/animation/Track;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private rotations:Lcom/jme3/animation/CompactQuaternionArray;

.field private scales:Lcom/jme3/animation/CompactVector3Array;

.field private times:[F

.field private trackSpatial:Lcom/jme3/scene/Spatial;

.field private translations:Lcom/jme3/animation/CompactVector3Array;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/animation/SpatialTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/SpatialTrack;
    .locals 2

    .line 3
    new-instance v0, Lcom/jme3/util/clone/Cloner;

    invoke-direct {v0}, Lcom/jme3/util/clone/Cloner;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v1, v1}, Lcom/jme3/util/clone/Cloner;->setClonedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/SpatialTrack;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->clone()Lcom/jme3/animation/SpatialTrack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->clone()Lcom/jme3/animation/SpatialTrack;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactVector3Array;

    iput-object p2, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object p2, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactVector3Array;

    iput-object p2, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Spatial;

    iput-object p2, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    return-void
.end method

.method public getKeyFrameTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    return-object v0
.end method

.method public getLength()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-float v0, v1, v0

    :goto_0
    return v0
.end method

.method public getRotations()[Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

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

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

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

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    return-object v0
.end method

.method public getTrackSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getTranslations()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

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

.method public jmeClone()Lcom/jme3/animation/SpatialTrack;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/SpatialTrack;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t clone track"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->jmeClone()Lcom/jme3/animation/SpatialTrack;

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

    iput-object v0, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v0, "rotations"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object v0, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v0, "times"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    const-string v0, "scales"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactVector3Array;

    iput-object v0, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const-string v0, "trackSpatial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 1

    array-length v0, p1

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    if-eqz p2, :cond_0

    new-instance p1, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {p1}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p2}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p1, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {p1}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, p3}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_1
    if-eqz p4, :cond_2

    new-instance p1, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {p1}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p4}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "BoneTrack with no keyframes!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 8

    iget-object p2, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p2

    :cond_0
    iget-object p3, p5, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object p4, p5, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v0, p5, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v1, p5, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v2, p5, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    iget-object p5, p5, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    const/4 v7, 0x0

    if-ltz v6, :cond_c

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    aget v3, v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4, p3}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v4, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v3, v7

    :goto_0
    if-ge v7, v4, :cond_5

    iget-object v6, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    aget v6, v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_5

    add-int/lit8 v5, v7, 0x1

    move v3, v7

    move v7, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    aget v6, v4, v3

    sub-float/2addr p1, v6

    aget v4, v4, v5

    sub-float/2addr v4, v6

    div-float/2addr p1, v4

    iget-object v4, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v4, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3, p3}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v4, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v3, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v5, p5}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v3, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v5, v1}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v3, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v5, v2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v0, p5, p1}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    invoke-virtual {p3, v1, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p4, v2, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v7, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v7, p3}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v7, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_10

    invoke-virtual {p2, p3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    :cond_10
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-eqz p1, :cond_11

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_11
    iget-object p1, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_12

    invoke-virtual {p2, p4}, Lcom/jme3/scene/Spatial;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    :cond_12
    return-void
.end method

.method public setTrackSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    return-void
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

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "translations"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v1, "rotations"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->times:[F

    const-string v1, "times"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "scales"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/SpatialTrack;->trackSpatial:Lcom/jme3/scene/Spatial;

    const-string v1, "trackSpatial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
