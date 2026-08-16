.class public final Lcom/simsilica/mathd/bits/FloatBits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bits:I

.field private final invMult:F

.field private final mask:J

.field private final maxValue:F

.field private final minValue:F

.field private final mult:F

.field private final resolution:I


# direct methods
.method public constructor <init>(FFI)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 v0, 0x40

    if-ge p3, v0, :cond_0

    iput p1, p0, Lcom/simsilica/mathd/bits/FloatBits;->minValue:F

    iput p2, p0, Lcom/simsilica/mathd/bits/FloatBits;->maxValue:F

    iput p3, p0, Lcom/simsilica/mathd/bits/FloatBits;->bits:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/simsilica/mathd/bits/FloatBits;->resolution:I

    const-wide/16 v2, -0x1

    sub-int/2addr v0, p3

    ushr-long/2addr v2, v0

    iput-wide v2, p0, Lcom/simsilica/mathd/bits/FloatBits;->mask:J

    add-int/lit8 p3, v1, -0x1

    int-to-float p3, p3

    sub-float/2addr p2, p1

    div-float/2addr p3, p2

    iput p3, p0, Lcom/simsilica/mathd/bits/FloatBits;->mult:F

    add-int/lit8 v1, v1, -0x1

    int-to-float p1, v1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/simsilica/mathd/bits/FloatBits;->invMult:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bits must be in the range 0 - 63"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Min value must be less than max value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 13

    new-instance p0, Lcom/simsilica/mathd/bits/FloatBits;

    const/16 v0, 0x8

    const v1, -0x3df1999a    # -35.6f

    const v2, 0x420e6666    # 35.6f

    invoke-direct {p0, v1, v2, v0}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    new-instance v0, Lcom/simsilica/mathd/bits/FloatBits;

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v3, v1, v2

    const-string v4, "  rev2:"

    const-string v5, "  bits2:"

    const-string v6, "  rev1:"

    const-string v7, "  bits1:"

    const-string v8, "f:"

    if-gtz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v2

    invoke-virtual {v0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v9

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v9

    invoke-virtual {v0, v2}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v11

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fromBits(J)F
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->mask:J

    and-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lcom/simsilica/mathd/bits/FloatBits;->invMult:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/simsilica/mathd/bits/FloatBits;->minValue:F

    add-float/2addr p1, p2

    return p1
.end method

.method public getBitSize()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->bits:I

    return v0
.end method

.method public getFloatResolution()F
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->invMult:F

    return v0
.end method

.method public getMask()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->mask:J

    return-wide v0
.end method

.method public getMaxValue()F
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->minValue:F

    return v0
.end method

.method public toBits(F)J
    .locals 3

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->minValue:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! FloatBits *** underflow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  under:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/simsilica/mathd/bits/FloatBits;->minValue:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v1, p0, Lcom/simsilica/mathd/bits/FloatBits;->maxValue:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! FloatBits *** overflow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  over:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/simsilica/mathd/bits/FloatBits;->maxValue:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/simsilica/mathd/bits/FloatBits;->resolution:I

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Lcom/simsilica/mathd/bits/FloatBits;->mult:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    float-to-long v0, p1

    return-wide v0
.end method
