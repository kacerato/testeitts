.class public Lcom/simsilica/mathd/trans/PositionTransition3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/simsilica/mathd/trans/Transition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/simsilica/mathd/trans/Transition<",
        "Lcom/simsilica/mathd/trans/PositionTransition3d;",
        ">;"
    }
.end annotation


# instance fields
.field private final endPos:Lcom/simsilica/mathd/Vec3d;

.field private final endRot:Lcom/simsilica/mathd/Quatd;

.field private final endTime:J

.field private final endVisible:Z

.field private startPos:Lcom/simsilica/mathd/Vec3d;

.field private startRot:Lcom/simsilica/mathd/Quatd;

.field private startTime:J

.field private startVisible:Z


# direct methods
.method public constructor <init>(JLcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Quatd;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    iput-object p3, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    iput-object p4, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    iput-boolean p5, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endVisible:Z

    return-void
.end method

.method public static createBuffer(I)Lcom/simsilica/mathd/trans/TransitionBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/simsilica/mathd/trans/TransitionBuffer<",
            "Lcom/simsilica/mathd/trans/PositionTransition3d;",
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

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndPosition()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public getEndRotation()Lcom/simsilica/mathd/Quatd;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    return-wide v0
.end method

.method public getEndVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endVisible:Z

    return v0
.end method

.method public getPosition(J)Lcom/simsilica/mathd/Vec3d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/trans/PositionTransition3d;->getPosition(JZ)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(JZ)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startPos:Lcom/simsilica/mathd/Vec3d;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/simsilica/mathd/trans/PositionTransition3d;->tween(J)D

    move-result-wide p1

    .line 7
    new-instance p3, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p3}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startPos:Lcom/simsilica/mathd/Vec3d;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/simsilica/mathd/Vec3d;->interpolateLocal(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;D)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(J)Lcom/simsilica/mathd/Quatd;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/trans/PositionTransition3d;->getRotation(JZ)Lcom/simsilica/mathd/Quatd;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(JZ)Lcom/simsilica/mathd/Quatd;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startRot:Lcom/simsilica/mathd/Quatd;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    invoke-virtual {p1}, Lcom/simsilica/mathd/Quatd;->clone()Lcom/simsilica/mathd/Quatd;

    move-result-object v1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/simsilica/mathd/Quatd;->clone()Lcom/simsilica/mathd/Quatd;

    move-result-object v1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    new-instance p3, Lcom/simsilica/mathd/Quatd;

    invoke-direct {p3}, Lcom/simsilica/mathd/Quatd;-><init>()V

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startRot:Lcom/simsilica/mathd/Quatd;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    invoke-virtual {p0, p1, p2}, Lcom/simsilica/mathd/trans/PositionTransition3d;->tween(J)D

    move-result-wide p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/simsilica/mathd/Quatd;->slerpLocal(Lcom/simsilica/mathd/Quatd;Lcom/simsilica/mathd/Quatd;D)Lcom/simsilica/mathd/Quatd;

    move-result-object p1

    return-object p1
.end method

.method public getStartPosition()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startPos:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public getStartRotation()Lcom/simsilica/mathd/Quatd;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startRot:Lcom/simsilica/mathd/Quatd;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    return-wide v0
.end method

.method public getStartVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startVisible:Z

    return v0
.end method

.method public getVisibility(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endVisible:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startVisible:Z

    return p1
.end method

.method public setPreviousTransition(Lcom/simsilica/mathd/trans/PositionTransition3d;)V
    .locals 4

    .line 2
    iget-wide v0, p1, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    iput-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    .line 3
    iget-object v2, p1, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    iput-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startPos:Lcom/simsilica/mathd/Vec3d;

    .line 4
    iget-object v2, p1, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    iput-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startRot:Lcom/simsilica/mathd/Quatd;

    .line 5
    iget-boolean p1, p1, Lcom/simsilica/mathd/trans/PositionTransition3d;->endVisible:Z

    iput-boolean p1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startVisible:Z

    .line 6
    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

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
    check-cast p1, Lcom/simsilica/mathd/trans/PositionTransition3d;

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/trans/PositionTransition3d;->setPreviousTransition(Lcom/simsilica/mathd/trans/PositionTransition3d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionTransition3d[ t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startPos:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rot:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startRot:Lcom/simsilica/mathd/Quatd;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", vis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startVisible:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> t:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endPos:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endRot:Lcom/simsilica/mathd/Quatd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tween(J)D
    .locals 7

    iget-wide v0, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->endTime:J

    iget-wide v2, p0, Lcom/simsilica/mathd/trans/PositionTransition3d;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    sub-long/2addr p1, v2

    long-to-double p1, p1

    long-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    :cond_1
    cmpg-double v2, p1, v5

    if-gez v2, :cond_2

    return-wide v5

    :cond_2
    div-double/2addr p1, v0

    return-wide p1
.end method
