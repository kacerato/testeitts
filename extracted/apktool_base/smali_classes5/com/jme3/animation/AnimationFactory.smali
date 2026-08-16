.class public Lcom/jme3/animation/AnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/animation/AnimationFactory$Rotation;,
        Lcom/jme3/animation/AnimationFactory$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EULER_STEP:F = 2.3561945f


# instance fields
.field protected duration:F

.field protected fps:I

.field protected keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

.field protected keyFramesScale:[Lcom/jme3/math/Vector3f;

.field protected keyFramesTranslation:[Lcom/jme3/math/Vector3f;

.field protected name:Ljava/lang/String;

.field protected rotations:[Lcom/jme3/math/Quaternion;

.field protected scales:[Lcom/jme3/math/Vector3f;

.field protected times:[F

.field protected totalFrames:I

.field protected tpf:F

.field protected translations:[Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/animation/AnimationFactory;-><init>(FLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/jme3/animation/AnimationFactory;->name:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/jme3/animation/AnimationFactory;->duration:F

    .line 5
    iput p3, p0, Lcom/jme3/animation/AnimationFactory;->fps:I

    int-to-float p2, p3

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 6
    iput p1, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    const/high16 p3, 0x3f800000    # 1.0f

    div-float p2, p3, p2

    .line 7
    iput p2, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    .line 8
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/jme3/animation/AnimationFactory;->times:[F

    .line 9
    new-array p2, p1, [Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/AnimationFactory;->translations:[Lcom/jme3/math/Vector3f;

    .line 10
    new-array p2, p1, [Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/animation/AnimationFactory;->rotations:[Lcom/jme3/math/Quaternion;

    .line 11
    new-array p2, p1, [Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/AnimationFactory;->scales:[Lcom/jme3/math/Vector3f;

    .line 12
    new-array p1, p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesTranslation:[Lcom/jme3/math/Vector3f;

    .line 13
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 14
    iget p1, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    new-array p1, p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesScale:[Lcom/jme3/math/Vector3f;

    .line 15
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2, p3, p3, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object p2, p1, v0

    .line 16
    iget p1, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    new-array p1, p1, [Lcom/jme3/animation/AnimationFactory$Rotation;

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    .line 17
    new-instance p2, Lcom/jme3/animation/AnimationFactory$Rotation;

    invoke-direct {p2, p0}, Lcom/jme3/animation/AnimationFactory$Rotation;-><init>(Lcom/jme3/animation/AnimationFactory;)V

    aput-object p2, p1, v0

    return-void
.end method

.method private getNextKeyFrame(I[Ljava/lang/Object;)I
    .locals 1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getPreviousKeyFrame(I[Ljava/lang/Object;)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRotationForFrame(I)Lcom/jme3/animation/AnimationFactory$Rotation;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/animation/AnimationFactory$Rotation;

    invoke-direct {v0, p0}, Lcom/jme3/animation/AnimationFactory$Rotation;-><init>(Lcom/jme3/animation/AnimationFactory;)V

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    aput-object v0, v1, p1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyFrameIndex must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScaleForFrame(I)Lcom/jme3/math/Vector3f;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesScale:[Lcom/jme3/math/Vector3f;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesScale:[Lcom/jme3/math/Vector3f;

    aput-object v0, v1, p1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyFrameIndex must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTranslationForFrame(I)Lcom/jme3/math/Vector3f;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesTranslation:[Lcom/jme3/math/Vector3f;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesTranslation:[Lcom/jme3/math/Vector3f;

    aput-object v0, v1, p1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyFrameIndex must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private interpolate([Ljava/lang/Object;Lcom/jme3/animation/AnimationFactory$Type;)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-ge v0, v1, :cond_9

    invoke-direct {p0, v0, p1}, Lcom/jme3/animation/AnimationFactory;->getNextKeyFrame(I[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    sub-int v2, v1, v0

    move v5, v0

    :goto_1
    if-gt v5, v1, :cond_3

    sub-int v6, v5, v0

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v4, :cond_1

    if-eq v7, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/jme3/animation/AnimationFactory;->scales:[Lcom/jme3/math/Vector3f;

    aget-object v8, p1, v0

    check-cast v8, Lcom/jme3/math/Vector3f;

    aget-object v9, p1, v1

    check-cast v9, Lcom/jme3/math/Vector3f;

    invoke-static {v6, v8, v9}, Lcom/jme3/math/FastMath;->interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v7, v5

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7}, Lcom/jme3/math/Quaternion;-><init>()V

    iget-object v8, p0, Lcom/jme3/animation/AnimationFactory;->rotations:[Lcom/jme3/math/Quaternion;

    aget-object v9, p1, v0

    check-cast v9, Lcom/jme3/animation/AnimationFactory$Rotation;

    iget-object v9, v9, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    aget-object v10, p1, v1

    check-cast v10, Lcom/jme3/animation/AnimationFactory$Rotation;

    iget-object v10, v10, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v7, v9, v10, v6}, Lcom/jme3/math/Quaternion;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)Lcom/jme3/math/Quaternion;

    move-result-object v6

    aput-object v6, v8, v5

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/jme3/animation/AnimationFactory;->translations:[Lcom/jme3/math/Vector3f;

    aget-object v8, p1, v0

    check-cast v8, Lcom/jme3/math/Vector3f;

    aget-object v9, p1, v1

    check-cast v9, Lcom/jme3/math/Vector3f;

    invoke-static {v6, v8, v9}, Lcom/jme3/math/FastMath;->interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v7, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_3
    iget v2, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-ge v1, v2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/jme3/animation/AnimationFactory;->scales:[Lcom/jme3/math/Vector3f;

    aget-object v5, p1, v0

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/jme3/animation/AnimationFactory;->rotations:[Lcom/jme3/math/Quaternion;

    aget-object v5, p1, v0

    check-cast v5, Lcom/jme3/animation/AnimationFactory$Rotation;

    iget-object v5, v5, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v5}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/jme3/animation/AnimationFactory;->translations:[Lcom/jme3/math/Vector3f;

    aget-object v5, p1, v0

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v5

    aput-object v5, v2, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private interpolateTime()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/animation/AnimationFactory;->totalFrames:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->times:[F

    int-to-float v2, v0

    iget v3, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyFrameRotation(ILcom/jme3/math/Quaternion;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/animation/AnimationFactory;->getRotationForFrame(I)Lcom/jme3/animation/AnimationFactory$Rotation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/animation/AnimationFactory$Rotation;->set(Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public addKeyFrameRotationAngles(IFFF)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/jme3/animation/AnimationFactory;->getRotationForFrame(I)Lcom/jme3/animation/AnimationFactory$Rotation;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/jme3/animation/AnimationFactory$Rotation;->set(FFF)V

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    invoke-direct {p0, p1, v0}, Lcom/jme3/animation/AnimationFactory;->getPreviousKeyFrame(I[Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v1, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v1, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float v3, p4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x40490fdb    # (float)Math.PI

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    sub-int v3, p1, v0

    iget-object v4, v1, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p2, v5

    int-to-float v3, v3

    div-float/2addr p2, v3

    iget v5, v4, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p3, v5

    div-float/2addr p3, v3

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p4, v4

    div-float/2addr p4, v3

    div-float/2addr v3, v2

    const v2, 0x4016cbe4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    :goto_0
    add-int/2addr v0, v2

    if-ge v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/jme3/animation/AnimationFactory;->getRotationForFrame(I)Lcom/jme3/animation/AnimationFactory$Rotation;

    move-result-object v3

    iput p1, v3, Lcom/jme3/animation/AnimationFactory$Rotation;->masterKeyFrame:I

    iget-object v4, v1, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    int-to-float v6, v0

    mul-float v7, v6, p2

    add-float/2addr v5, v7

    iget v7, v4, Lcom/jme3/math/Vector3f;->y:F

    mul-float v8, v6, p3

    add-float/2addr v7, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v6, p4

    add-float/2addr v4, v6

    invoke-virtual {v3, v5, v7, v4}, Lcom/jme3/animation/AnimationFactory$Rotation;->set(FFF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addKeyFrameScale(ILcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/animation/AnimationFactory;->getScaleForFrame(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public addKeyFrameTransform(ILcom/jme3/math/Transform;)V
    .locals 1

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameTranslation(ILcom/jme3/math/Vector3f;)V

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameScale(ILcom/jme3/math/Vector3f;)V

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameRotation(ILcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public addKeyFrameTranslation(ILcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/animation/AnimationFactory;->getTranslationForFrame(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public addTimeRotation(FLcom/jme3/math/Quaternion;)V
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameRotation(ILcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public addTimeRotationAngles(FFFF)V
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameRotationAngles(IFFF)V

    return-void
.end method

.method public addTimeScale(FLcom/jme3/math/Vector3f;)V
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameScale(ILcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addTimeTransform(FLcom/jme3/math/Transform;)V
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameTransform(ILcom/jme3/math/Transform;)V

    return-void
.end method

.method public addTimeTranslation(FLcom/jme3/math/Vector3f;)V
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimationFactory;->tpf:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/AnimationFactory;->addKeyFrameTranslation(ILcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public buildAnimation()Lcom/jme3/animation/Animation;
    .locals 5

    invoke-direct {p0}, Lcom/jme3/animation/AnimationFactory;->interpolateTime()V

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesTranslation:[Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/animation/AnimationFactory$Type;->Translation:Lcom/jme3/animation/AnimationFactory$Type;

    invoke-direct {p0, v0, v1}, Lcom/jme3/animation/AnimationFactory;->interpolate([Ljava/lang/Object;Lcom/jme3/animation/AnimationFactory$Type;)V

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesRotation:[Lcom/jme3/animation/AnimationFactory$Rotation;

    sget-object v1, Lcom/jme3/animation/AnimationFactory$Type;->Rotation:Lcom/jme3/animation/AnimationFactory$Type;

    invoke-direct {p0, v0, v1}, Lcom/jme3/animation/AnimationFactory;->interpolate([Ljava/lang/Object;Lcom/jme3/animation/AnimationFactory$Type;)V

    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory;->keyFramesScale:[Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/animation/AnimationFactory$Type;->Scale:Lcom/jme3/animation/AnimationFactory$Type;

    invoke-direct {p0, v0, v1}, Lcom/jme3/animation/AnimationFactory;->interpolate([Ljava/lang/Object;Lcom/jme3/animation/AnimationFactory$Type;)V

    new-instance v0, Lcom/jme3/animation/SpatialTrack;

    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory;->times:[F

    iget-object v2, p0, Lcom/jme3/animation/AnimationFactory;->translations:[Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/AnimationFactory;->rotations:[Lcom/jme3/math/Quaternion;

    iget-object v4, p0, Lcom/jme3/animation/AnimationFactory;->scales:[Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/animation/SpatialTrack;-><init>([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/animation/Animation;

    iget-object v2, p0, Lcom/jme3/animation/AnimationFactory;->name:Ljava/lang/String;

    iget v3, p0, Lcom/jme3/animation/AnimationFactory;->duration:F

    invoke-direct {v1, v2, v3}, Lcom/jme3/animation/Animation;-><init>(Ljava/lang/String;F)V

    filled-new-array {v0}, [Lcom/jme3/animation/SpatialTrack;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/animation/Animation;->setTracks([Lcom/jme3/animation/Track;)V

    return-object v1
.end method
