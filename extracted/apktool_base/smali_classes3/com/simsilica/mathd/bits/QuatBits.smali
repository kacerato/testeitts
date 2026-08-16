.class public final Lcom/simsilica/mathd/bits/QuatBits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final componentBits:Lcom/simsilica/mathd/bits/FloatBits;

.field private mask:J

.field private final totalBits:I

.field private final wShift:I

.field private final yShift:I

.field private final zShift:I


# direct methods
.method public constructor <init>(I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/simsilica/mathd/bits/FloatBits;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    iput-object v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    iput p1, p0, Lcom/simsilica/mathd/bits/QuatBits;->yShift:I

    add-int v1, p1, p1

    iput v1, p0, Lcom/simsilica/mathd/bits/QuatBits;->zShift:I

    add-int v2, v1, p1

    iput v2, p0, Lcom/simsilica/mathd/bits/QuatBits;->wShift:I

    add-int v3, v2, p1

    iput v3, p0, Lcom/simsilica/mathd/bits/QuatBits;->totalBits:I

    const/16 v4, 0x40

    if-gt v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v6

    shl-long/2addr v6, p1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v6

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v0

    shl-long/2addr v0, v2

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bit size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Total bit size exceeds 64"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 35

    new-instance v7, Lcom/simsilica/mathd/Quatd;

    invoke-direct {v7}, Lcom/simsilica/mathd/Quatd;-><init>()V

    new-instance v8, Lcom/simsilica/mathd/bits/QuatBits;

    const/16 v0, 0xc

    invoke-direct {v8, v0}, Lcom/simsilica/mathd/bits/QuatBits;-><init>(I)V

    new-instance v5, Lcom/simsilica/mathd/Vec4d;

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    const-wide/high16 v23, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v25, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v19, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v21, -0x3fdc000000000000L    # -10.0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v26}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    new-instance v15, Lcom/simsilica/mathd/Vec4d;

    invoke-direct {v15}, Lcom/simsilica/mathd/Vec4d;-><init>()V

    new-instance v13, Lcom/simsilica/mathd/Vec4d;

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v24}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    const/4 v0, 0x0

    move-wide/from16 v23, v21

    :goto_0
    const-wide v25, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v1, v23, v25

    if-gez v1, :cond_3

    move-wide/from16 v27, v21

    :goto_1
    cmpg-double v1, v27, v25

    const-wide v29, 0x3f99bc65b68b71c3L    # 0.025132741228718346

    if-gez v1, :cond_2

    move/from16 v31, v0

    move-wide/from16 v32, v21

    :goto_2
    cmpg-double v0, v32, v25

    if-gez v0, :cond_1

    move-object v0, v7

    move-wide/from16 v1, v23

    move-wide/from16 v3, v27

    move-object v14, v5

    move-wide/from16 v5, v32

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/Quatd;->fromAngles(DDD)Lcom/simsilica/mathd/Quatd;

    invoke-virtual {v7}, Lcom/simsilica/mathd/Quatd;->normalizeLocal()Lcom/simsilica/mathd/Quatd;

    iget-wide v11, v7, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v0, v7, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v2, v7, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v4, v7, Lcom/simsilica/mathd/Quatd;->w:D

    move-object v10, v15

    move-object/from16 v34, v13

    move-object v6, v14

    move-wide v13, v0

    move-object v1, v15

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v10 .. v18}, Lcom/simsilica/mathd/Vec4d;->set(DDDD)Lcom/simsilica/mathd/Vec4d;

    invoke-virtual {v6, v1}, Lcom/simsilica/mathd/Vec4d;->minLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;

    invoke-virtual {v9, v1}, Lcom/simsilica/mathd/Vec4d;->maxLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;

    invoke-virtual {v8, v7}, Lcom/simsilica/mathd/bits/QuatBits;->toBits(Lcom/simsilica/mathd/Quatd;)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/simsilica/mathd/bits/QuatBits;->fromBits(J)Lcom/simsilica/mathd/Quatd;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/simsilica/mathd/bits/QuatBits;->toBits(Lcom/simsilica/mathd/Quatd;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Double convert failed..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    test:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v7, v0}, Lcom/simsilica/mathd/Quatd;->subtractLocal(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;

    iget-wide v2, v7, Lcom/simsilica/mathd/Quatd;->x:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    iget-wide v2, v7, Lcom/simsilica/mathd/Quatd;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    iget-wide v2, v7, Lcom/simsilica/mathd/Quatd;->z:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    iget-wide v2, v7, Lcom/simsilica/mathd/Quatd;->w:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    move-object v10, v1

    invoke-virtual/range {v10 .. v18}, Lcom/simsilica/mathd/Vec4d;->set(DDDD)Lcom/simsilica/mathd/Vec4d;

    move-object/from16 v2, v34

    invoke-virtual {v2, v1}, Lcom/simsilica/mathd/Vec4d;->maxLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;

    add-int/lit8 v31, v31, 0x1

    add-double v32, v32, v29

    move-object v15, v1

    move-object v13, v2

    move-object v5, v6

    goto/16 :goto_2

    :cond_1
    move-object v6, v5

    move-object v2, v13

    move-object v1, v15

    add-double v27, v27, v29

    move/from16 v0, v31

    goto/16 :goto_1

    :cond_2
    move-object v6, v5

    move-object v2, v13

    move-object v1, v15

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-double v10, v23, v25

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-double v23, v23, v29

    move-object v13, v2

    move-object v5, v6

    goto/16 :goto_0

    :cond_3
    move-object v6, v5

    move-object v2, v13

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Completed in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v3, v19

    long-to-double v7, v3

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v10

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " ms    per iteration:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v7, v0

    div-long/2addr v3, v7

    long-to-double v3, v3

    div-double/2addr v3, v10

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error rate:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fromBits(J)Lcom/simsilica/mathd/Quatd;
    .locals 12

    iget-object v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v0

    and-long/2addr v0, p1

    iget v2, p0, Lcom/simsilica/mathd/bits/QuatBits;->yShift:I

    shr-long v2, p1, v2

    iget-object v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v4}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v4

    and-long/2addr v2, v4

    iget v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->zShift:I

    shr-long v4, p1, v4

    iget-object v6, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v6}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v6

    and-long/2addr v4, v6

    iget v6, p0, Lcom/simsilica/mathd/bits/QuatBits;->wShift:I

    shr-long/2addr p1, v6

    iget-object v6, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v6}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v6

    and-long/2addr p1, v6

    iget-object v6, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v6, v0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v0

    iget-object v1, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v1, v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v1

    iget-object v2, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v2, v4, v5}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v2

    iget-object v3, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v3, p1, p2}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result p1

    new-instance p2, Lcom/simsilica/mathd/Quatd;

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v8, v2

    float-to-double v10, p1

    move-object v3, p2

    invoke-direct/range {v3 .. v11}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object p2
.end method

.method public getBitSize()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->totalBits:I

    return v0
.end method

.method public getComponentBitSize()I
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getBitSize()I

    move-result v0

    return v0
.end method

.method public getMask()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->mask:J

    return-wide v0
.end method

.method public toBits(Lcom/simsilica/mathd/Quatd;)J
    .locals 9

    iget-object v0, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->x:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v3, p1, Lcom/simsilica/mathd/Quatd;->y:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v2

    iget-object v4, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v5, p1, Lcom/simsilica/mathd/Quatd;->z:D

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v4

    iget-object v6, p0, Lcom/simsilica/mathd/bits/QuatBits;->componentBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v7, p1, Lcom/simsilica/mathd/Quatd;->w:D

    double-to-float p1, v7

    invoke-virtual {v6, p1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v6

    iget p1, p0, Lcom/simsilica/mathd/bits/QuatBits;->yShift:I

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iget p1, p0, Lcom/simsilica/mathd/bits/QuatBits;->zShift:I

    shl-long v2, v4, p1

    or-long/2addr v0, v2

    iget p1, p0, Lcom/simsilica/mathd/bits/QuatBits;->wShift:I

    shl-long v2, v6, p1

    or-long/2addr v0, v2

    return-wide v0
.end method
