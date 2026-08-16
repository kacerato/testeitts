.class public Lcom/simsilica/mathd/trans/PositionTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/simsilica/mathd/trans/Transition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/simsilica/mathd/trans/Transition<",
        "Lcom/simsilica/mathd/trans/PositionTransition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final endPos:Lcom/jme3/math/Vector3f;

.field private final endRot:Lcom/jme3/math/Quaternion;

.field private final endTime:J

.field private final endVisible:Z

.field private startPos:Lcom/jme3/math/Vector3f;

.field private startRot:Lcom/jme3/math/Quaternion;

.field private startTime:J

.field private startVisible:Z


# direct methods
.method public constructor <init>(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    .line 3
    iput-object p3, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    .line 4
    iput-object p4, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    .line 5
    iput-boolean p5, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endVisible:Z

    return-void
.end method

.method public constructor <init>(JLcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Quatd;Z)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    .line 8
    new-instance p1, Lcom/jme3/math/Vector3f;

    iget-wide v0, p3, Lcom/simsilica/mathd/Vec3d;->x:D

    double-to-float p2, v0

    iget-wide v0, p3, Lcom/simsilica/mathd/Vec3d;->y:D

    double-to-float v0, v0

    iget-wide v1, p3, Lcom/simsilica/mathd/Vec3d;->z:D

    double-to-float p3, v1

    invoke-direct {p1, p2, v0, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    .line 9
    new-instance p1, Lcom/jme3/math/Quaternion;

    iget-wide p2, p4, Lcom/simsilica/mathd/Quatd;->x:D

    double-to-float p2, p2

    iget-wide v0, p4, Lcom/simsilica/mathd/Quatd;->y:D

    double-to-float p3, v0

    iget-wide v0, p4, Lcom/simsilica/mathd/Quatd;->z:D

    double-to-float v0, v0

    iget-wide v1, p4, Lcom/simsilica/mathd/Quatd;->w:D

    double-to-float p4, v1

    invoke-direct {p1, p2, p3, v0, p4}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    iput-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    .line 10
    iput-boolean p5, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endVisible:Z

    return-void
.end method

.method public static createBuffer(I)Lcom/simsilica/mathd/trans/TransitionBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/simsilica/mathd/trans/TransitionBuffer<",
            "Lcom/simsilica/mathd/trans/PositionTransition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/simsilica/mathd/trans/TransitionBuffer;

    invoke-direct {v0, p0}, Lcom/simsilica/mathd/trans/TransitionBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public containsTime(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    return-wide v0
.end method

.method public getFrameVelocity()Lcom/jme3/math/Vector3f;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startPos:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v4

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v4, v5

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public getPosition(J)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/trans/PositionTransition;->getPosition(JZ)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(JZ)Lcom/jme3/math/Vector3f;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startPos:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/simsilica/mathd/trans/PositionTransition;->tween(J)F

    move-result p1

    .line 7
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object p3, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startPos:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p3, v0, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(J)Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/trans/PositionTransition;->getRotation(JZ)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(JZ)Lcom/jme3/math/Quaternion;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startRot:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/simsilica/mathd/trans/PositionTransition;->tween(J)F

    move-result p1

    invoke-virtual {p3, v0, v1, p1}, Lcom/jme3/math/Quaternion;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    return-wide v0
.end method

.method public getVisibility(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endVisible:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startVisible:Z

    return p1
.end method

.method public setPreviousTransition(Lcom/simsilica/mathd/trans/PositionTransition;)V
    .locals 4

    .line 2
    iget-wide v0, p1, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    iput-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    .line 3
    iget-object v2, p1, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    iput-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startPos:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v2, p1, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    iput-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startRot:Lcom/jme3/math/Quaternion;

    .line 5
    iget-boolean p1, p1, Lcom/simsilica/mathd/trans/PositionTransition;->endVisible:Z

    iput-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startVisible:Z

    .line 6
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Frame transitions cannot go backwards."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setPreviousTransition(Lcom/simsilica/mathd/trans/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/simsilica/mathd/trans/PositionTransition;

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/trans/PositionTransition;->setPreviousTransition(Lcom/simsilica/mathd/trans/PositionTransition;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionTransition[ t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rot:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", vis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startVisible:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> t:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tween(J)F
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition;->endTime:J

    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    sub-long/2addr p1, v2

    long-to-float p1, p1

    long-to-float p2, v0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_1
    cmpg-float v0, p1, v5

    if-gez v0, :cond_2

    return v5

    :cond_2
    div-float/2addr p1, p2

    return p1
.end method
