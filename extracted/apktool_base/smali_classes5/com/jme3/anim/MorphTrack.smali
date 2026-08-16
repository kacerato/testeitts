.class public Lcom/jme3/anim/MorphTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/AnimTrack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jme3/anim/AnimTrack<",
        "[F>;"
    }
.end annotation


# instance fields
.field private interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

.field private length:D

.field private nbMorphTargets:I

.field private target:Lcom/jme3/scene/Geometry;

.field private times:[F

.field private weights:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/anim/MorphTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Geometry;[F[FI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/anim/MorphTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    .line 5
    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    .line 6
    iput p4, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/jme3/anim/MorphTrack;->setKeyframes([F[F)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

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
    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/anim/MorphTrack;->getDataAtTime(D[F)V

    return-void
.end method

.method public getDataAtTime(D[F)V
    .locals 7

    double-to-float p1, p1

    .line 2
    iget-object p2, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    aget v2, p2, v1

    cmpl-float v4, p1, v2

    if-ltz v4, :cond_1

    sub-float/2addr p1, v2

    add-int/lit8 v0, v0, -0x2

    .line 4
    aget p2, p2, v0

    add-float/2addr p1, p2

    sub-float/2addr p1, p2

    sub-float/2addr v2, p2

    div-float/2addr p1, v2

    move v2, p1

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    move v0, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    aget v2, v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    add-int/lit8 p2, v3, 0x1

    move v0, v3

    move v3, p2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    aget v2, v1, v0

    sub-float/2addr p1, v2

    aget p2, v1, p2

    sub-float/2addr p2, v2

    div-float/2addr p1, p2

    move v2, p1

    move v3, v0

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/jme3/anim/MorphTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Lcom/jme3/anim/interpolator/FrameInterpolator;->getThreadDefault()Lcom/jme3/anim/interpolator/FrameInterpolator;

    move-result-object p1

    :cond_3
    move-object v1, p1

    .line 9
    iget-object v4, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    iget v5, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/anim/interpolator/FrameInterpolator;->interpolateWeights(FI[FI[F)V

    return-void

    .line 10
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    if-eqz p1, :cond_5

    .line 11
    iget p2, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    invoke-static {p1, v3, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void
.end method

.method public getFrameInterpolator()Lcom/jme3/anim/interpolator/FrameInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/MorphTrack;->length:D

    return-wide v0
.end method

.method public getNbMorphTargets()I
    .locals 1

    iget v0, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    return v0
.end method

.method public getTarget()Lcom/jme3/scene/Geometry;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    return-object v0
.end method

.method public getWeights()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/MorphTrack;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    const-string v0, "weights"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    const-string v0, "times"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    const-string v0, "target"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    const-string v0, "nbMorphTargets"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    iget-object p1, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    invoke-virtual {p0, p1}, Lcom/jme3/anim/MorphTrack;->setTimes([F)V

    return-void
.end method

.method public setFrameInterpolator(Lcom/jme3/anim/interpolator/FrameInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->interpolator:Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-void
.end method

.method public setKeyframes([F[F)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/MorphTrack;->setTimes([F)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/jme3/anim/MorphTrack;->setKeyframesWeight([F)V

    :cond_1
    return-void
.end method

.method public setKeyframesWeight([F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    if-eqz v0, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_1

    array-length v0, v0

    iget v1, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    mul-int/2addr v0, v1

    array-length v1, p1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "weights.length must equal nbMorphTargets * times.length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MorphTrack with no weight keyframes!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MorphTrack doesn\'t have any time for key frames, please call setTimes first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNbMorphTargets([FI)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    array-length v0, v0

    mul-int/2addr v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    iput p2, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    invoke-virtual {p0, p1}, Lcom/jme3/anim/MorphTrack;->setKeyframesWeight([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "weights.length must equal nbMorphTargets * times.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTarget(Lcom/jme3/scene/Geometry;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    return-void
.end method

.method public setTimes([F)V
    .locals 2

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aget p1, p1, v1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/jme3/anim/MorphTrack;->length:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TransformTrack with no keyframes!"

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

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->weights:[F

    const-string v1, "weights"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->times:[F

    const-string v1, "times"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/anim/MorphTrack;->target:Lcom/jme3/scene/Geometry;

    const-string v1, "target"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/anim/MorphTrack;->nbMorphTargets:I

    const-string v1, "nbMorphTargets"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
