.class public final Lcom/threed/jpct/Animation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEYFRAMESONLY:I = 0x4

.field public static final LINEAR:I = 0x0

.field public static final USE_CLAMPING:I = 0x1

.field public static final USE_WRAPPING:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field aktFrames:I

.field anzAnim:I

.field cacheIndices:Z

.field endFrame:I

.field endFrames:[I

.field keyFrames:[Lcom/threed/jpct/Mesh;

.field private transient lastFrame:I

.field maxFrames:I

.field mode:I

.field seqNames:[Ljava/lang/String;

.field startFrames:[I

.field wrapMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Animation;->lastFrame:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/Animation;->cacheIndices:Z

    iput p1, p0, Lcom/threed/jpct/Animation;->maxFrames:I

    new-array p1, p1, [Lcom/threed/jpct/Mesh;

    iput-object p1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    const/4 p1, 0x0

    iput p1, p0, Lcom/threed/jpct/Animation;->endFrame:I

    iput p1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    iput p1, p0, Lcom/threed/jpct/Animation;->mode:I

    iput p1, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    iput p1, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    :goto_0
    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aput v0, v1, p1

    iget-object v1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aput v0, v1, p1

    iget-object v1, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addKeyFrame(Lcom/threed/jpct/Mesh;)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Can\'t add a keyframe without a sub-sequence being created!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    iget v3, p0, Lcom/threed/jpct/Animation;->maxFrames:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aput-object p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    iget-object p1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aput v2, p1, v0

    iput v2, p0, Lcom/threed/jpct/Animation;->endFrame:I

    goto :goto_0

    :cond_1
    const-string p1, "Too many keyframes defined!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "Bounding box missing in this mesh!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    iget v0, p0, Lcom/threed/jpct/Animation;->endFrame:I

    aput v0, p1, v1

    return-void
.end method

.method public createSubSequence(Ljava/lang/String;)I
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    add-int/lit8 v1, v0, 0x1

    sget v2, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    iget-object v1, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    iget v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    aput v2, v1, v0

    iget-object v2, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    aput-object p1, v2, v0

    aput v3, v1, v3

    iget-object p1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aput v3, p1, v3

    const-string p1, "complete"

    aput-object p1, v2, v3

    goto :goto_0

    :cond_0
    const-string p1, "Too many sub-sequences defined. Modify configuration to allow a higher number."

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    return p1
.end method

.method public doAnimation(Lcom/threed/jpct/Object3D;IF)V
    .locals 8

    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    const/4 v1, 0x0

    if-gt p2, v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v0

    if-lez v2, :cond_0

    :goto_0
    move p3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p3, v0

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aget v7, v0, p2

    iget-object v0, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aget v6, v0, p2

    sub-int p2, v7, v6

    iget v0, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p3, p2

    int-to-float p2, v6

    add-float/2addr p3, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    int-to-float v0, v7

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    add-int/lit8 p2, v7, -0x1

    int-to-float p2, p2

    goto :goto_2

    :cond_2
    cmpg-float v0, p3, p2

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move p2, p3

    :goto_2
    float-to-int v4, p2

    int-to-float p3, v4

    sub-float v5, p2, p3

    iget p2, p0, Lcom/threed/jpct/Animation;->mode:I

    if-eqz p2, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const-string p1, "Unsupported interpolation mode used!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v4, v6, v7}, Lcom/threed/jpct/Animation;->interpolateNone(Lcom/threed/jpct/Object3D;III)V

    goto :goto_3

    :cond_5
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/threed/jpct/Animation;->interpolateLinear(Lcom/threed/jpct/Object3D;IFII)V

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Sub-sequence number "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_3
    return-void
.end method

.method public getKeyFrames()[Lcom/threed/jpct/Mesh;
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    new-array v1, v0, [Lcom/threed/jpct/Mesh;

    iget-object v2, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSequence(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSequenceBorders(I)[I
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aget p1, v1, p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public getSequenceCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    return v0
.end method

.method public interpolateLinear(Lcom/threed/jpct/Object3D;IFII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, p3

    add-int/lit8 v6, v2, 0x1

    iget v7, v0, Lcom/threed/jpct/Animation;->wrapMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    if-lt v6, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    goto :goto_0

    :cond_0
    if-ge v6, v3, :cond_1

    move v6, v3

    :cond_1
    :goto_0
    if-lt v2, v4, :cond_2

    :goto_1
    add-int/lit8 v2, v4, -0x1

    goto :goto_4

    :cond_2
    if-ge v2, v3, :cond_7

    :goto_2
    move v2, v3

    goto :goto_4

    :cond_3
    if-lt v6, v4, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    if-ge v6, v3, :cond_5

    add-int/lit8 v6, v4, -0x1

    :cond_5
    :goto_3
    if-lt v2, v4, :cond_6

    goto :goto_2

    :cond_6
    if-ge v2, v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    iget-object v3, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget-object v7, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    iget-object v9, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v10, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v11, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget-object v2, v7, v2

    iget-object v12, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v13, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v14, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v15, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v8, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v0, v2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 p2, v3

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget-object v6, v7, v6

    iget-object v7, v6, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 p4, v2

    iget-object v2, v6, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 p5, v8

    iget-object v8, v6, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v17, v3

    iget-object v3, v6, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v18, v15

    iget-object v15, v6, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/16 v19, 0x0

    move-object/from16 v20, v6

    move/from16 v6, v19

    :goto_5
    if-lt v6, v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/threed/jpct/Object3D;->modified:Z

    return-void

    :cond_8
    move/from16 v19, v4

    const/4 v4, 0x1

    aget v16, v12, v6

    mul-float v16, v16, v5

    aget v21, v7, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, v9, v6

    aget v16, v13, v6

    mul-float v16, v16, v5

    aget v21, v2, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, v10, v6

    aget v16, v14, v6

    mul-float v16, v16, v5

    aget v21, v8, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, v11, v6

    aget v16, v0, v6

    mul-float v16, v16, v5

    aget v21, v3, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, v18, v6

    aget v16, v17, v6

    mul-float v16, v16, v5

    aget v21, v15, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, p5, v6

    aget v16, p4, v6

    mul-float v16, v16, v5

    aget v21, v20, v6

    mul-float v21, v21, p3

    add-float v16, v16, v21

    aput v16, p2, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v19

    goto :goto_5
.end method

.method public interpolateNone(Lcom/threed/jpct/Object3D;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Lcom/threed/jpct/Animation;->wrapMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-lt v2, v4, :cond_0

    :goto_0
    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    :cond_0
    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v7, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v8, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v9, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v9, v9, v2

    iget-object v10, v9, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v11, v9, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v12, v9, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v13, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v14, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v15, v9, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v6, v9, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/16 v17, 0x0

    move-object/from16 p2, v3

    move/from16 v3, v17

    :goto_3
    if-lt v3, v4, :cond_5

    iget v3, v0, Lcom/threed/jpct/Animation;->lastFrame:I

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/threed/jpct/Object3D;->modified:Z

    iput v2, v0, Lcom/threed/jpct/Animation;->lastFrame:I

    :cond_4
    return-void

    :cond_5
    const/16 v16, 0x1

    aget v17, v10, v3

    aput v17, v5, v3

    aget v17, v11, v3

    aput v17, v7, v3

    aget v17, v12, v3

    aput v17, v8, v3

    aget v17, v15, v3

    aput v17, v13, v3

    aget v17, v6, v3

    aput v17, v14, v3

    aget v17, v9, v3

    aput v17, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public remove(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/threed/jpct/Animation;->getSequenceBorders(I)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    const/4 v1, 0x1

    aget v1, p1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/threed/jpct/Mesh;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Animation;->cacheIndices:Z

    return-void
.end method

.method public setClampingMode(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "Clamping-mode not supported!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    :goto_0
    return-void
.end method

.method public setInterpolationMethod(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Animation;->mode:I

    return-void
.end method

.method public strip()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/threed/jpct/Mesh;->strip()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/Mesh;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public validate(Lcom/threed/jpct/Object3D;)V
    .locals 4

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    const-string v2, "The animation shares a mesh with the animated object...fixing this...!"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    invoke-virtual {v1, v3}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object v1

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
