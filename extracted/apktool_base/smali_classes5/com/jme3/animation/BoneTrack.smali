.class public final Lcom/jme3/animation/BoneTrack;
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

.field private targetBoneIndex:I

.field private times:[F

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

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    return-void
.end method

.method public constructor <init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    .line 4
    invoke-virtual {p0, p2, p3, p4}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public constructor <init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    .line 7
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/BoneTrack;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/jme3/util/clone/Cloner;->deepClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/BoneTrack;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->clone()Lcom/jme3/animation/BoneTrack;

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
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->clone()Lcom/jme3/animation/BoneTrack;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactVector3Array;

    iput-object p2, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    iget-object p2, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object p2, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    iget-object p2, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/CompactVector3Array;

    iput-object p2, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    iget-object p2, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    return-void
.end method

.method public getKeyFrameTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    return-object v0
.end method

.method public getLength()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

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

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getScales()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

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

.method public getTargetBoneIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    return v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    return-object v0
.end method

.method public getTranslations()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/animation/BoneTrack;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/BoneTrack;
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
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->jmeClone()Lcom/jme3/animation/BoneTrack;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "boneIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    const-string v1, "translations"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/animation/CompactVector3Array;

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v4, "rotations"

    invoke-interface {v0, v4, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v5

    check-cast v5, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object v5, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v5, "times"

    invoke-interface {v0, v5, v3}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v5

    iput-object v5, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    const-string v5, "scales"

    invoke-interface {v0, v5, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v5

    check-cast v5, Lcom/jme3/animation/CompactVector3Array;

    iput-object v5, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-nez p1, :cond_0

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v1}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    array-length v1, p1

    new-array v1, v1, [Lcom/jme3/math/Vector3f;

    array-length v5, p1

    invoke-static {p1, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, v1}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_0
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-nez p1, :cond_1

    invoke-interface {v0, v4, v3}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {v0}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/math/Quaternion;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, v0}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_1
    return-void
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    .line 3
    new-instance p1, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {p1}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    .line 4
    invoke-virtual {p1, p2}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    .line 6
    new-instance p1, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {p1}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    .line 7
    invoke-virtual {p1, p3}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "BoneTrack with no keyframes!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V

    if-eqz p4, :cond_0

    .line 11
    new-instance p1, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {p1}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    .line 12
    invoke-virtual {p1, p4}, Lcom/jme3/animation/CompactArray;->add([Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1}, Lcom/jme3/animation/CompactArray;->freeze()V

    :cond_0
    return-void
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;)V
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 9

    .line 1
    invoke-virtual {p4}, Lcom/jme3/animation/AnimChannel;->getAffectedBones()Ljava/util/BitSet;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2
    iget v0, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    invoke-virtual {p4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object p3

    iget p4, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    invoke-virtual {p3, p4}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object p3

    .line 4
    iget-object p4, p5, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v0, p5, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 6
    iget-object v1, p5, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 7
    iget-object v2, p5, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 8
    iget-object v3, p5, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 9
    iget-object p5, p5, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    .line 10
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    const/4 v8, 0x0

    if-ltz v7, :cond_6

    if-nez v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    .line 12
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, v5, v1}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, v5, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p1, v5, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v4, v8

    :goto_0
    if-ge v8, v5, :cond_3

    .line 16
    iget-object v7, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v7, v7, v8

    cmpg-float v7, v7, p1

    if-gez v7, :cond_3

    add-int/lit8 v6, v8, 0x1

    move v4, v8

    move v8, v6

    goto :goto_0

    .line 17
    :cond_3
    iget-object v5, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v7, v5, v4

    sub-float/2addr p1, v7

    aget v5, v5, v6

    sub-float/2addr v5, v7

    div-float/2addr p1, v5

    .line 18
    iget-object v5, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v5, v4, v1}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v5, v4, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v5, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v5, :cond_4

    .line 21
    invoke-virtual {v5, v4, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v4, v6, p5}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v4, v6, v2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v4, v6, v3}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_5
    invoke-virtual {v1, p5, p1}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    .line 27
    invoke-virtual {p4, v2, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    .line 28
    invoke-virtual {v0, v3, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    goto :goto_2

    .line 29
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {p1, v8, v1}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {p1, v8, p4}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p1, v8, v0}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p3, p4, v1, v0, p2}, Lcom/jme3/animation/Bone;->blendAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;F)V

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

    iget v0, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    const-string v1, "boneIndex"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "translations"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const-string v1, "rotations"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    const-string v1, "times"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const-string v1, "scales"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
