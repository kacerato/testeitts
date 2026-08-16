.class public final Lcom/simsilica/mathd/AaBBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field private final max:Lcom/simsilica/mathd/Vec3d;

.field private final min:Lcom/simsilica/mathd/Vec3d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    .line 3
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    .line 6
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    .line 7
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/simsilica/mathd/AaBBox;->setForRadius(Lcom/simsilica/mathd/Vec3d;D)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3d;D)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    .line 10
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/simsilica/mathd/AaBBox;->setForRadius(Lcom/simsilica/mathd/Vec3d;D)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    .line 14
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/simsilica/mathd/AaBBox;->set(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 12

    new-instance p0, Lcom/simsilica/mathd/AaBBox;

    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v7, v0, v1}, Lcom/simsilica/mathd/AaBBox;-><init>(Lcom/simsilica/mathd/Vec3d;D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   center:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/AaBBox;->getCenter()Lcom/simsilica/mathd/Vec3d;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  extents:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/AaBBox;->getExtents()Lcom/simsilica/mathd/Vec3d;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    invoke-virtual {p0, v1}, Lcom/simsilica/mathd/AaBBox;->setCenter(Lcom/simsilica/mathd/Vec3d;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/AaBBox;->getCenter()Lcom/simsilica/mathd/Vec3d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/AaBBox;->getExtents()Lcom/simsilica/mathd/Vec3d;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/simsilica/mathd/AaBBox;
    .locals 3

    .line 2
    new-instance v0, Lcom/simsilica/mathd/AaBBox;

    iget-object v1, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v1}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    iget-object v2, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v2}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/simsilica/mathd/AaBBox;-><init>(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/AaBBox;->clone()Lcom/simsilica/mathd/AaBBox;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/simsilica/mathd/AaBBox;->getCenter(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    return-object v0
.end method

.method public getCenter(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    .line 4
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/simsilica/mathd/Vec3d;->addLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/simsilica/mathd/Vec3d;->multLocal(D)Lcom/simsilica/mathd/Vec3d;

    return-object p1
.end method

.method public getExtents()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/simsilica/mathd/AaBBox;->getExtents(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    return-object v0
.end method

.method public getExtents(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    .line 4
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/simsilica/mathd/Vec3d;->subtractLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/simsilica/mathd/Vec3d;->multLocal(D)Lcom/simsilica/mathd/Vec3d;

    return-object p1
.end method

.method public getMax()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public getMin()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public set(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, p2}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setCenter(DDD)V
    .locals 15

    move-object v0, p0

    .line 6
    iget-object v1, v0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-object v4, v0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    iget-wide v5, v4, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double/2addr v2, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v5

    sub-double v2, p1, v2

    .line 7
    iget-wide v7, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v9, v4, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    sub-double v11, p3, v7

    .line 8
    iget-wide v7, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v9, v4, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    sub-double v13, p5, v7

    move-wide v5, v2

    move-wide v7, v11

    move-wide v9, v13

    .line 9
    invoke-virtual/range {v4 .. v10}, Lcom/simsilica/mathd/Vec3d;->addLocal(DDD)Lcom/simsilica/mathd/Vec3d;

    .line 10
    iget-object v7, v0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    move-wide v8, v2

    move-wide v10, v11

    move-wide v12, v13

    invoke-virtual/range {v7 .. v13}, Lcom/simsilica/mathd/Vec3d;->addLocal(DDD)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setCenter(Lcom/simsilica/mathd/Vec3d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-object v4, v0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    iget-wide v5, v4, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-object v7, v0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    iget-wide v8, v7, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double/2addr v5, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v8

    sub-double/2addr v2, v5

    .line 2
    iget-wide v5, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v10, v4, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v12, v7, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr v10, v12

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    .line 3
    iget-wide v10, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v12, v4, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v14, v7, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr v12, v14

    mul-double/2addr v12, v8

    sub-double v15, v10, v12

    move-wide v8, v2

    move-wide v10, v5

    move-wide v12, v15

    .line 4
    invoke-virtual/range {v7 .. v13}, Lcom/simsilica/mathd/Vec3d;->addLocal(DDD)Lcom/simsilica/mathd/Vec3d;

    .line 5
    iget-object v10, v0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    move-wide v11, v2

    move-wide v13, v5

    invoke-virtual/range {v10 .. v16}, Lcom/simsilica/mathd/Vec3d;->addLocal(DDD)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setForExtents(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V
    .locals 8

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, p2}, Lcom/simsilica/mathd/Vec3d;->subtractLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    iget-object v1, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v6, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, p2}, Lcom/simsilica/mathd/Vec3d;->addLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setForRadius(DDDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    sub-double v1, p1, p7

    sub-double v3, p3, p7

    sub-double v5, p5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    .line 4
    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    add-double v1, p1, p7

    add-double v3, p3, p7

    add-double p6, p5, p7

    move-object p1, v0

    move-wide p2, v1

    move-wide p4, v3

    invoke-virtual/range {p1 .. p7}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setForRadius(Lcom/simsilica/mathd/Vec3d;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    iget-wide v3, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double v3, v3, p2

    iget-wide v5, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double v5, v5, p2

    iget-wide v7, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double v7, v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    .line 2
    iget-object v9, v0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double v10, v2, p2

    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double v12, v2, p2

    iget-wide v1, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double v14, v1, p2

    invoke-virtual/range {v9 .. v15}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setMax(Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public setMin(Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/simsilica/mathd/AaBBox;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/AaBBox;->min:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/AaBBox;->max:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
